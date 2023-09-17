#include <Arduino.h>
#include <fablab_kurs.h>

uint8_t aud_freq1, aud_freq2;

enum {START = 0, RENNT, ENDE} game_state;
volatile uint32_t beruehrt = 0;

volatile uint32_t systick;
uint32_t spiel_start;

typedef struct {
  uint8_t n;		// Notenwert
  uint16_t l;		// Länge in ms
} song_t; 		// Name des Datentypen

void SpieleLied(const song_t *lied);

void del(uint32_t len)
{
  uint32_t ende = len + systick;
  while(systick < ende)
    ;
}

void SpieleLied(const song_t *lied)
{
  uint16_t pos = 0;		// Position im Lied
  uint8_t note;
  uint16_t laenge;
  
  // Tue ... Während das Lied nicht am ende ist (while am Ende)
  do
  {
    laenge = pgm_read_word(&lied[pos].l);
    note = pgm_read_byte(&lied[pos].n);
    
    if(note == nENDE)
    {
      break;
    }
      
    /*
    Wandle den Notenwert in eine Farbe um, sofern keine Pause ist
    Notenwert ist 0 ... 64 (64 = nEnde und wird nicht errreicht, da Schleife abbricht)
    0 ... 63 ist der Wertebereich von 6 bit
    Notenwert wird um 2 bit nach links geschoben, um die Variable auf 8 bit aufzublähen
    Dies könnte auch wieder mit der map Funktion gemacht werden
    */
    
   // Notenwert an das Sound System übergeben
    aud_freq2 = note;
	
    // Notenlänge abwarten
    del(laenge);
	
    // Note abschalten
    aud_freq2 = nPAUSE;
	
    // kurz abwarten als Trennung zwischen den Noten
    del(5);
	
    // Variable pos um 1 erhöhen
    pos++;
  }
  while(note < nENDE);
  // Hier gehts weiter, wenn die Schleife beendet wurde
  
  // Ton und Licht ausschalten
  aud_freq1 = nPAUSE;
}

int main()
{
  Serial.begin(9600);
  // output: CLKO, CS, MOSI, SCLK 
  DDRB = _BV(PB0) | _BV(PB2) | _BV(PB2) | _BV(PB5);
  // output: VPRG, LATCH, BLANK, LED Fehler, LED Bereit
  DDRC = _BV(PC0) | _BV(PC1) | _BV(PC2) | _BV(PC3) | _BV(PC4);
  // output: TX, OC0A, OC0B
  DDRD = _BV(PD1) | _BV(PD5) | _BV(PD6);
  	
  PORTB = 0;
  PORTC = 0;
  PORTD = 0;  

  // Timer 0 - PWM für Audio
  TCCR0A = _BV(COM0A1) | _BV(COM0B1) | _BV(WGM00) | _BV(WGM01);
  TCCR0B = _BV(CS00);
  OCR0A = 0x7F;
  OCR0B = 0x7F;
  
  // Timer 1 - Audio 9,6kHz
  TCCR1A = 0;
  TCCR1B = _BV(WGM12) | _BV(CS10);
  OCR1A = 1666;
  TIMSK1 = _BV(OCIE1A); 

  // Timer 2 - systick 1000Hz
  TCCR2A = _BV(WGM21);
  TCCR2B = _BV(CS22) | _BV(CS21) | _BV(CS20);
  OCR2A = 15;
  TIMSK2 = _BV(OCIE2A);
  
  aud_freq1 = 0;
  aud_freq2 = 0;
  
  game_state = START;
  
  sei();
  
  while(1)
  {
    // Startpunkt berührt
    if(!(PIND & _BV(PIND2)))
    {
      game_state = START;
      PORTC |= _BV(PORTC4);
      beruehrt = 0;
      spiel_start = systick;
      
      Serial.print(">S");
      Serial.print(beruehrt);
      Serial.print(":");
      Serial.println(spiel_start);
    }
    else
    {
      if(game_state != ENDE)
      {
        game_state = RENNT;
      }
      
      PORTC &= ~_BV(PORTC4);
    }
  
    // Draht berührt  
    if(!(PIND & _BV(PIND4)))
    {
      if(game_state == RENNT)
      {
        aud_freq1 = nD5;
        PORTC |= _BV(PORTC3);
      }
    }
    else
    {
      aud_freq1 = nPAUSE;
      PORTC &= ~_BV(PORTC3);
    }
  
    // Ende berührt  
    if(!(PIND & _BV(PIND3)))
    {
      if(game_state != ENDE)
      {
        uint32_t zeit, min, sek, zehntel;
        
        Serial.println("ENDE");
        Serial.print("Beruehrt: ");
        Serial.println(beruehrt);
        
        zeit = systick - spiel_start;
        // 1/100tel
        // 1 min = 60000, 1 sek= 1000
        min = zeit / 60000;
        zeit -= 60000 * min;
        sek = zeit / 1000;
        zeit -= 1000 * sek;
        zehntel = zeit / 100;
        
        Serial.print("Zeit: ");
        Serial.print(min);
        Serial.print(" Minuten ");
        Serial.print(sek);
        Serial.print(" Sekunden ");
        Serial.print(zehntel);
        Serial.println(" zehntel");
        
        game_state = ENDE;
      }
    }    
  }
  
  return 0;
}

// update audio daten
ISR(TIMER1_COMPA_vect)
{
  static uint16_t phase1 = 0, phase2 = 0;
  uint16_t sum = 0x200;

  if(aud_freq1)
  {
    phase1 += (pgm_read_word(&freqLUT[aud_freq1]));
    sum += (int8_t)pgm_read_byte(&sineLUT[phase1 >> 8]);
  }
    
  OCR0A = sum >> 2;

  sum = 0x200;
  if(aud_freq2)
  {
    phase2 += (pgm_read_word(&freqLUT[aud_freq2]));
    sum += (int8_t)pgm_read_byte(&sineLUT[phase2 >> 8]);
  }
    
  OCR0B = sum >> 2;
}

ISR(TIMER2_COMPA_vect)
{
  systick++;
  if(!(PIND & _BV(PIND4)))
  {
    beruehrt++;
  }
}
