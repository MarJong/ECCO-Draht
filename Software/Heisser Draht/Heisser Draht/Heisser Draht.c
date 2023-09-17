#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/pgmspace.h>
#include <string.h>

#include "const.h"

#define SPI_SEND(x)		{ SPDR = x;  while(!(SPSR & (1 << SPIF))); }

// schwierigkeitsGrad
#define G_EASY			0
#define G_MEDIUM		1
#define G_HARD			2

// Status
#define S_IDLE		0
#define S_RUN		1
#define S_END		2

//Flags
#define F_TOUCHING		0x01

volatile uint32_t systick;

uint8_t status = S_IDLE;
uint8_t difficulty = G_MEDIUM;
volatile uint8_t flags = 0;

#define LED_DATA_LEN	24
uint8_t led_data[LED_DATA_LEN];

struct {
	uint16_t times_touched;
	uint32_t last_touch_tick;
} gamedata;

volatile uint16_t audio1 = 0, audio2 = 0;	// -> freqLUT

void led_init()
{
	uint8_t i;
	
	// DC Daten senden
	PORTC |= _BV(PORTC0);
	
	for(i = 0; i < 12; i++)
	{
		SPI_SEND(0xFF);
	}
	
	// latch
	PORTC |= _BV(PORTC1);
	PORTC &= _BV(PORTC1);
	
	// DC Modus aus
	PORTC &= ~_BV(PORTC0);
	
	// alle led aus
	for(i = 0; i < 24; i++)
	{
		SPI_SEND(0);
	}
	
	// latch
	PORTC |= _BV(PORTC1);
	PORTC &= _BV(PORTC1);
}

void led_update()
{
	uint8_t i;
	
	for(i = 0; i < LED_DATA_LEN; i++)
	{
		SPI_SEND(led_data[i]);
	}
	
	// latch
	PORTC |= _BV(PORTC1);
	PORTC &= _BV(PORTC1);	
}

int main(void)
{
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
	
	// Timer 2 - systick 100Hz
	TCCR2A = _BV(WGM21);
	TCCR2B = _BV(CS22) | _BV(CS21) | _BV(CS20);
	OCR2A = 156;
	TIMSK2 = _BV(OCIE2A);
	
	// uart 19,2k baud
	UCSR0A = 0;
	UCSR0B = _BV(RXCIE0) | _BV(RXEN0) | _BV(TXEN0);
	UCSR0C = _BV(UCSZ01) | _BV(UCSZ00);
	UBRR0 = 51;
	
	// spi
	SPCR = _BV(SPE) | _BV(MSTR);
	SPSR = _BV(SPI2X);
	SPDR = 0;
	
	// adc
	ADMUX = _BV(MUX2) | _BV(MUX0);
	ADCSRA = _BV(ADEN) | _BV(ADSC);
	while(ADCSRA & _BV(ADSC))
		;
	ADC;
	
	// variablen
	systick = 0;
	memset(led_data, 0, LED_DATA_LEN);
	
	// sonstiges
	led_init();
	
	// start
	sei();
	
    while(1)
    {
		if(!(PIND & _BV(PIND2)))
		{
			// Startpunkt berührt
			uint8_t adc_temp;
			
			status = S_IDLE;
			PORTC |= _BV(PORTC4);

			ADCSRA = _BV(ADEN) | _BV(ADSC);
			while(ADCSRA & _BV(ADSC))
				;
			adc_temp = ADC >> 2;
			
			if(adc_temp > 200)
			{
				difficulty = G_EASY;
			}
			else if(adc_temp < 500)
			{
				difficulty = G_HARD;
			}
			else
			{
				difficulty = G_MEDIUM;
			}
			
			gamedata.times_touched = 0;
			gamedata.last_touch_tick = 0;
			// TODO: reset
		}
		else
		{
			PORTC &= ~_BV(PORTC4);
			if(status != S_END)
			{
				status = S_RUN;
			}
		}
		
		if(!(PIND & _BV(PIND3)))
		{
			// Ende berührt
			status = S_END;
			
			// TODO
		}
		
		if(!(PIND & _BV(PIND4)))
		{
			// Draht berührt
			if(status == S_RUN)
			{
				// TODO
				PORTC |= _BV(PORTC3);
				audio1 = 2952;
			}
		}
		else
		{
			PORTC &= ~_BV(PORTC3);
			audio1 = 0;
		}
    }
}

// update audio und led daten
ISR(TIMER1_COMPA_vect)
{
	static uint8_t cnt = 2, cnt2 = 255;
	static uint16_t phase1 = 0, phase2 = 0;
	
	if(cnt)
	{
		cnt--;
	}
	else
	{
		// pulse an blank und update wenn nötig
		PORTC |= _BV(PORTC2);
		
		cnt = 2;
		
		if(!cnt2)
		{
			led_update();
		}
		cnt2--;
		
		PORTC &= ~_BV(PORTC2);
	}
	
	phase1 += audio1;
	phase2 += audio2;
	
	OCR0A = (0x200 + (int8_t)pgm_read_byte(&sineLUT[phase1 >> 8])) >> 2;
	OCR0B = (0x200 + (int8_t)pgm_read_byte(&sineLUT[phase2 >> 8])) >> 2;
}

// systick
ISR(TIMER2_COMPA_vect)
{
	systick++;
}