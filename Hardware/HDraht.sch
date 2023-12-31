EESchema Schematic File Version 2
LIBS:HDraht-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:contrib
LIBS:valves
LIBS:arduinonano
LIBS:tlc5940
LIBS:HDraht-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "4 nov 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_01X04 P2
U 1 1 55E4CA81
P 1950 5950
F 0 "P2" H 1950 6200 50  0000 C CNN
F 1 "CONN_DRAHT" V 2050 5950 50  0000 C CNN
F 2 "Connect:bornier4" H 1950 5950 60  0001 C CNN
F 3 "" H 1950 5950 60  0000 C CNN
	1    1950 5950
	-1   0    0    1   
$EndComp
Text Notes 1700 6100 2    60   ~ 0
Start\nEnde\nDraht\nKelle
$Comp
L CONN_01X06 P4
U 1 1 55E4CCC5
P 2900 7050
F 0 "P4" H 2900 7250 50  0000 C CNN
F 1 "CONN_LED" V 3000 7050 50  0000 C CNN
F 2 "Connect:bornier6" H 2900 7050 60  0001 C CNN
F 3 "" H 2900 7050 60  0000 C CNN
	1    2900 7050
	1    0    0    -1  
$EndComp
Text Notes 3100 7100 0    60   ~ 0
Bereit\nFehler\nAn
$Comp
L CONN_01X03 P7
U 1 1 55E4CE1E
P 10550 2500
F 0 "P7" H 10550 2750 50  0000 C CNN
F 1 "CONN_SPEAKER" V 10650 2500 50  0000 C CNN
F 2 "Connect:bornier3" H 10550 2500 60  0001 C CNN
F 3 "" H 10550 2500 60  0000 C CNN
	1    10550 2500
	1    0    0    -1  
$EndComp
Text Notes 10800 2700 0    60   ~ 0
+1\n-\n+2\n-
$Comp
L CONN_01X02 P5
U 1 1 55E4DF5D
P 6750 3400
F 0 "P5" H 6750 3550 50  0000 C CNN
F 1 "CONN_SCHALTER" V 6850 3400 50  0000 C CNN
F 2 "Connect:bornier2" H 6750 3400 60  0001 C CNN
F 3 "" H 6750 3400 60  0000 C CNN
	1    6750 3400
	1    0    0    -1  
$EndComp
Text Notes 6950 3450 0    60   ~ 0
Schwierigkeit\nR am Schalter
$Comp
L 7805 U1
U 1 1 55E5F044
P 2700 1400
F 0 "U1" H 2850 1204 60  0000 C CNN
F 1 "7805" H 2700 1600 60  0000 C CNN
F 2 "Transistors_TO-220:TO-220_Neutral123_Vertical" H 2700 1400 60  0001 C CNN
F 3 "" H 2700 1400 60  0000 C CNN
	1    2700 1400
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR01
U 1 1 55E5FD3A
P 3300 1350
F 0 "#PWR01" H 3300 1200 50  0001 C CNN
F 1 "+5V" H 3300 1490 50  0000 C CNN
F 2 "" H 3300 1350 60  0000 C CNN
F 3 "" H 3300 1350 60  0000 C CNN
	1    3300 1350
	0    1    1    0   
$EndComp
$Comp
L CP-RESCUE-HDraht C5
U 1 1 55E5FEF4
P 3200 1550
F 0 "C5" H 3225 1650 50  0000 L CNN
F 1 "100µ" H 3225 1450 50  0000 L CNN
F 2 "Capacitors_Elko_ThroughHole:Elko_vert_11x5mm_RM2.5_CopperClear" H 3238 1400 30  0001 C CNN
F 3 "" H 3200 1550 60  0000 C CNN
	1    3200 1550
	1    0    0    -1  
$EndComp
$Comp
L CP-RESCUE-HDraht C1
U 1 1 55E6007F
P 2200 1550
F 0 "C1" H 2225 1650 50  0000 L CNN
F 1 "10µ" H 2225 1450 50  0000 L CNN
F 2 "Capacitors_Elko_ThroughHole:Elko_vert_11x5mm_RM2.5" H 2238 1400 30  0001 C CNN
F 3 "" H 2200 1550 60  0000 C CNN
	1    2200 1550
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-HDraht #PWR02
U 1 1 55E60281
P 2700 1800
F 0 "#PWR02" H 2700 1550 50  0001 C CNN
F 1 "GND" H 2700 1650 50  0000 C CNN
F 2 "" H 2700 1800 60  0000 C CNN
F 3 "" H 2700 1800 60  0000 C CNN
	1    2700 1800
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P1
U 1 1 55E60565
P 1700 1400
F 0 "P1" H 1700 1550 50  0000 C CNN
F 1 "CONN_POWER" V 1800 1400 50  0000 C CNN
F 2 "Connect:bornier2" H 1700 1400 60  0001 C CNN
F 3 "" H 1700 1400 60  0000 C CNN
	1    1700 1400
	-1   0    0    1   
$EndComp
$Comp
L R-RESCUE-HDraht R1
U 1 1 55E60E8C
P 2500 6800
F 0 "R1" V 2580 6800 50  0000 C CNN
F 1 "200" V 2500 6800 50  0000 C CNN
F 2 "Discret:R4" V 2430 6800 30  0001 C CNN
F 3 "" H 2500 6800 30  0000 C CNN
	1    2500 6800
	0    1    1    0   
$EndComp
$Comp
L R-RESCUE-HDraht R3
U 1 1 55E60F72
P 2500 7200
F 0 "R3" V 2580 7200 50  0000 C CNN
F 1 "200" V 2500 7200 50  0000 C CNN
F 2 "Discret:R4" V 2430 7200 30  0001 C CNN
F 3 "" H 2500 7200 30  0000 C CNN
	1    2500 7200
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR03
U 1 1 55E5F944
P 2850 3800
F 0 "#PWR03" H 2850 3650 50  0001 C CNN
F 1 "+5V" H 2850 3940 50  0000 C CNN
F 2 "" H 2850 3800 60  0000 C CNN
F 3 "" H 2850 3800 60  0000 C CNN
	1    2850 3800
	0    -1   -1   0   
$EndComp
$Comp
L R-RESCUE-HDraht R7
U 1 1 55E5F529
P 3050 3800
F 0 "R7" V 3130 3800 50  0000 C CNN
F 1 "10k" V 3050 3800 50  0000 C CNN
F 2 "Discret:R4" V 2980 3800 30  0001 C CNN
F 3 "" H 3050 3800 30  0000 C CNN
	1    3050 3800
	0    -1   -1   0   
$EndComp
$Comp
L GND-RESCUE-HDraht #PWR04
U 1 1 55E5EA3D
P 6550 4500
F 0 "#PWR04" H 6550 4250 50  0001 C CNN
F 1 "GND" H 6550 4350 50  0000 C CNN
F 2 "" H 6550 4500 60  0000 C CNN
F 3 "" H 6550 4500 60  0000 C CNN
	1    6550 4500
	0    -1   -1   0   
$EndComp
$Comp
L GND-RESCUE-HDraht #PWR05
U 1 1 55E5E64A
P 4650 3500
F 0 "#PWR05" H 4650 3250 50  0001 C CNN
F 1 "GND" H 4650 3350 50  0000 C CNN
F 2 "" H 4650 3500 60  0000 C CNN
F 3 "" H 4650 3500 60  0000 C CNN
	1    4650 3500
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-HDraht C7
U 1 1 55E5E5EA
P 4450 3250
F 0 "C7" H 4475 3350 50  0000 L CNN
F 1 "100n" H 4475 3150 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 4488 3100 30  0001 C CNN
F 3 "" H 4450 3250 60  0000 C CNN
	1    4450 3250
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-HDraht C12
U 1 1 55E5E519
P 6350 4500
F 0 "C12" H 6375 4600 50  0000 L CNN
F 1 "100n" H 6375 4400 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 6388 4350 30  0001 C CNN
F 3 "" H 6350 4500 60  0000 C CNN
	1    6350 4500
	0    -1   -1   0   
$EndComp
$Comp
L GND-RESCUE-HDraht #PWR06
U 1 1 55E5E407
P 6000 4400
F 0 "#PWR06" H 6000 4150 50  0001 C CNN
F 1 "GND" H 6000 4250 50  0000 C CNN
F 2 "" H 6000 4400 60  0000 C CNN
F 3 "" H 6000 4400 60  0000 C CNN
	1    6000 4400
	0    -1   -1   0   
$EndComp
$Comp
L C-RESCUE-HDraht C9
U 1 1 55E5E25F
P 4850 3250
F 0 "C9" H 4875 3350 50  0000 L CNN
F 1 "100n" H 4875 3150 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 4888 3100 30  0001 C CNN
F 3 "" H 4850 3250 60  0000 C CNN
	1    4850 3250
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR07
U 1 1 55E4D201
P 4650 3000
F 0 "#PWR07" H 4650 2850 50  0001 C CNN
F 1 "+5V" H 4650 3140 50  0000 C CNN
F 2 "" H 4650 3000 60  0000 C CNN
F 3 "" H 4650 3000 60  0000 C CNN
	1    4650 3000
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-HDraht #PWR08
U 1 1 55E659FC
P 3550 4500
F 0 "#PWR08" H 3550 4250 50  0001 C CNN
F 1 "GND" H 3550 4350 50  0000 C CNN
F 2 "" H 3550 4500 60  0000 C CNN
F 3 "" H 3550 4500 60  0000 C CNN
	1    3550 4500
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR09
U 1 1 55E667EB
P 3500 4400
F 0 "#PWR09" H 3500 4250 50  0001 C CNN
F 1 "+5V" H 3500 4540 50  0000 C CNN
F 2 "" H 3500 4400 60  0000 C CNN
F 3 "" H 3500 4400 60  0000 C CNN
	1    3500 4400
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR010
U 1 1 55E66AD9
P 5950 4600
F 0 "#PWR010" H 5950 4450 50  0001 C CNN
F 1 "+5V" H 5950 4740 50  0000 C CNN
F 2 "" H 5950 4600 60  0000 C CNN
F 3 "" H 5950 4600 60  0000 C CNN
	1    5950 4600
	0    1    1    0   
$EndComp
$Comp
L Crystal_Small Y1
U 1 1 55E67AF2
P 2950 4650
F 0 "Y1" H 2950 4750 50  0000 C CNN
F 1 "16MHz" H 2950 4550 50  0000 C CNN
F 2 "Crystals:Crystal_HC49-U_Vertical" H 2950 4650 60  0001 C CNN
F 3 "" H 2950 4650 60  0000 C CNN
	1    2950 4650
	0    1    1    0   
$EndComp
$Comp
L C-RESCUE-HDraht C2
U 1 1 55E67BAD
P 2650 4500
F 0 "C2" H 2675 4600 50  0000 L CNN
F 1 "22p" H 2675 4400 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 2688 4350 30  0001 C CNN
F 3 "" H 2650 4500 60  0000 C CNN
	1    2650 4500
	0    1    1    0   
$EndComp
$Comp
L C-RESCUE-HDraht C3
U 1 1 55E67C49
P 2650 4800
F 0 "C3" H 2675 4900 50  0000 L CNN
F 1 "22p" H 2675 4700 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 2688 4650 30  0001 C CNN
F 3 "" H 2650 4800 60  0000 C CNN
	1    2650 4800
	0    1    1    0   
$EndComp
$Comp
L GND-RESCUE-HDraht #PWR011
U 1 1 55E67DE7
P 2400 4650
F 0 "#PWR011" H 2400 4400 50  0001 C CNN
F 1 "GND" H 2400 4500 50  0000 C CNN
F 2 "" H 2400 4650 60  0000 C CNN
F 3 "" H 2400 4650 60  0000 C CNN
	1    2400 4650
	0    1    1    0   
$EndComp
$Comp
L GND-RESCUE-HDraht #PWR012
U 1 1 55E684C5
P 2300 7300
F 0 "#PWR012" H 2300 7050 50  0001 C CNN
F 1 "GND" H 2300 7150 50  0000 C CNN
F 2 "" H 2300 7300 60  0000 C CNN
F 3 "" H 2300 7300 60  0000 C CNN
	1    2300 7300
	0    1    1    0   
$EndComp
$Comp
L GND-RESCUE-HDraht #PWR013
U 1 1 55E68800
P 2300 6900
F 0 "#PWR013" H 2300 6650 50  0001 C CNN
F 1 "GND" H 2300 6750 50  0000 C CNN
F 2 "" H 2300 6900 60  0000 C CNN
F 3 "" H 2300 6900 60  0000 C CNN
	1    2300 6900
	0    1    1    0   
$EndComp
$Comp
L GND-RESCUE-HDraht #PWR014
U 1 1 55E68E4C
P 6450 3450
F 0 "#PWR014" H 6450 3200 50  0001 C CNN
F 1 "GND" H 6450 3300 50  0000 C CNN
F 2 "" H 6450 3450 60  0000 C CNN
F 3 "" H 6450 3450 60  0000 C CNN
	1    6450 3450
	0    1    1    0   
$EndComp
$Comp
L R-RESCUE-HDraht R15
U 1 1 55E693A7
P 5950 3050
F 0 "R15" V 6030 3050 50  0000 C CNN
F 1 "10k" V 5950 3050 50  0000 C CNN
F 2 "Discret:R4" V 5880 3050 30  0001 C CNN
F 3 "" H 5950 3050 30  0000 C CNN
	1    5950 3050
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR015
U 1 1 55E69AB2
P 5950 2750
F 0 "#PWR015" H 5950 2600 50  0001 C CNN
F 1 "+5V" H 5950 2890 50  0000 C CNN
F 2 "" H 5950 2750 60  0000 C CNN
F 3 "" H 5950 2750 60  0000 C CNN
	1    5950 2750
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X06 P3
U 1 1 55E6AFD8
P 2200 2850
F 0 "P3" H 2200 3200 50  0000 C CNN
F 1 "CONN_USB-Seriell" V 2300 2850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x06" H 2200 2850 60  0001 C CNN
F 3 "" H 2200 2850 60  0000 C CNN
	1    2200 2850
	0    -1   -1   0   
$EndComp
NoConn ~ 1950 3050
$Comp
L +5V #PWR016
U 1 1 55E6B08F
P 2150 3150
F 0 "#PWR016" H 2150 3000 50  0001 C CNN
F 1 "+5V" H 2150 3290 50  0000 C CNN
F 2 "" H 2150 3150 60  0000 C CNN
F 3 "" H 2150 3150 60  0000 C CNN
	1    2150 3150
	-1   0    0    1   
$EndComp
$Comp
L GND-RESCUE-HDraht #PWR017
U 1 1 55E6B179
P 2050 3200
F 0 "#PWR017" H 2050 2950 50  0001 C CNN
F 1 "GND" H 2050 3050 50  0000 C CNN
F 2 "" H 2050 3200 60  0000 C CNN
F 3 "" H 2050 3200 60  0000 C CNN
	1    2050 3200
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-HDraht C4
U 1 1 55E6B2C1
P 3050 3450
F 0 "C4" H 3075 3550 50  0000 L CNN
F 1 "100n" H 3075 3350 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 3088 3300 30  0001 C CNN
F 3 "" H 3050 3450 60  0000 C CNN
	1    3050 3450
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR018
U 1 1 55E9E43D
P 2100 7200
F 0 "#PWR018" H 2100 7050 50  0001 C CNN
F 1 "+5V" H 2100 7340 50  0000 C CNN
F 2 "" H 2100 7200 60  0000 C CNN
F 3 "" H 2100 7200 60  0000 C CNN
	1    2100 7200
	0    -1   -1   0   
$EndComp
$Comp
L GND-RESCUE-HDraht #PWR019
U 1 1 55E9F08E
P 2400 6100
F 0 "#PWR019" H 2400 5850 50  0001 C CNN
F 1 "GND" H 2400 5950 50  0000 C CNN
F 2 "" H 2400 6100 60  0000 C CNN
F 3 "" H 2400 6100 60  0000 C CNN
	1    2400 6100
	0    -1   -1   0   
$EndComp
$Comp
L R-RESCUE-HDraht R6
U 1 1 55E9F132
P 2750 6000
F 0 "R6" V 2830 6000 50  0000 C CNN
F 1 "1k" V 2750 6000 50  0000 C CNN
F 2 "Discret:R4" V 2680 6000 30  0001 C CNN
F 3 "" H 2750 6000 30  0000 C CNN
	1    2750 6000
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR020
U 1 1 55E9F209
P 2950 6000
F 0 "#PWR020" H 2950 5850 50  0001 C CNN
F 1 "+5V" H 2950 6140 50  0000 C CNN
F 2 "" H 2950 6000 60  0000 C CNN
F 3 "" H 2950 6000 60  0000 C CNN
	1    2950 6000
	0    1    1    0   
$EndComp
$Comp
L R-RESCUE-HDraht R5
U 1 1 55EA0073
P 2750 5900
F 0 "R5" V 2830 5900 50  0000 C CNN
F 1 "1k" V 2750 5900 50  0000 C CNN
F 2 "Discret:R4" V 2680 5900 30  0001 C CNN
F 3 "" H 2750 5900 30  0000 C CNN
	1    2750 5900
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR021
U 1 1 55EA0079
P 2950 5900
F 0 "#PWR021" H 2950 5750 50  0001 C CNN
F 1 "+5V" H 2950 6040 50  0000 C CNN
F 2 "" H 2950 5900 60  0000 C CNN
F 3 "" H 2950 5900 60  0000 C CNN
	1    2950 5900
	0    1    1    0   
$EndComp
$Comp
L R-RESCUE-HDraht R4
U 1 1 55EA0C45
P 2750 5800
F 0 "R4" V 2830 5800 50  0000 C CNN
F 1 "1k" V 2750 5800 50  0000 C CNN
F 2 "Discret:R4" V 2680 5800 30  0001 C CNN
F 3 "" H 2750 5800 30  0000 C CNN
	1    2750 5800
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR022
U 1 1 55EA0C4B
P 2950 5800
F 0 "#PWR022" H 2950 5650 50  0001 C CNN
F 1 "+5V" H 2950 5940 50  0000 C CNN
F 2 "" H 2950 5800 60  0000 C CNN
F 3 "" H 2950 5800 60  0000 C CNN
	1    2950 5800
	0    1    1    0   
$EndComp
Text Label 2250 5800 0    60   ~ 0
start
Text Label 2250 5900 0    60   ~ 0
ende
Text Label 2250 6000 0    60   ~ 0
draht
Text Label 3450 4100 2    60   ~ 0
start
Text Label 3450 4200 2    60   ~ 0
ende
Text Label 3450 4300 2    60   ~ 0
draht
$Comp
L GND-RESCUE-HDraht #PWR023
U 1 1 55E68770
P 2300 7100
F 0 "#PWR023" H 2300 6850 50  0001 C CNN
F 1 "GND" H 2300 6950 50  0000 C CNN
F 2 "" H 2300 7100 60  0000 C CNN
F 3 "" H 2300 7100 60  0000 C CNN
	1    2300 7100
	0    1    1    0   
$EndComp
$Comp
L R-RESCUE-HDraht R2
U 1 1 55E60F1E
P 2500 7000
F 0 "R2" V 2580 7000 50  0000 C CNN
F 1 "200" V 2500 7000 50  0000 C CNN
F 2 "Discret:R4" V 2430 7000 30  0001 C CNN
F 3 "" H 2500 7000 30  0000 C CNN
	1    2500 7000
	0    1    1    0   
$EndComp
Text Label 2050 7000 2    60   ~ 0
led_fehler
Text Label 2050 6800 2    60   ~ 0
led_bereit
Text Label 5950 3900 0    60   ~ 0
led_bereit
Text Label 5950 4000 0    60   ~ 0
led_fehler
Text Label 3500 4800 2    60   ~ 0
audio_1
Text Label 3500 4900 2    60   ~ 0
audio_2
Text Label 4100 700  2    60   ~ 0
audio_1
Text Label 4350 1450 0    60   ~ 0
audio_2
$Comp
L R-RESCUE-HDraht R8
U 1 1 55EB7DA8
P 4100 900
F 0 "R8" V 4180 900 50  0000 C CNN
F 1 "680k" V 4100 900 50  0000 C CNN
F 2 "Discret:R4" V 4030 900 30  0001 C CNN
F 3 "" H 4100 900 30  0000 C CNN
	1    4100 900 
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-HDraht R9
U 1 1 55EB7E58
P 4100 1300
F 0 "R9" V 4180 1300 50  0000 C CNN
F 1 "33k" V 4100 1300 50  0000 C CNN
F 2 "Discret:R4" V 4030 1300 30  0001 C CNN
F 3 "" H 4100 1300 30  0000 C CNN
	1    4100 1300
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-HDraht #PWR024
U 1 1 55EB81BA
P 4100 1500
F 0 "#PWR024" H 4100 1250 50  0001 C CNN
F 1 "GND" H 4100 1350 50  0000 C CNN
F 2 "" H 4100 1500 60  0000 C CNN
F 3 "" H 4100 1500 60  0000 C CNN
	1    4100 1500
	1    0    0    -1  
$EndComp
$Comp
L CP1-RESCUE-HDraht C6
U 1 1 55EB88E8
P 4400 1100
F 0 "C6" H 4425 1200 50  0000 L CNN
F 1 "100µ" H 4425 1000 50  0000 L CNN
F 2 "Capacitors_Elko_ThroughHole:Elko_vert_11x5mm_RM2.5_CopperClear" H 4400 1100 60  0001 C CNN
F 3 "" H 4400 1100 60  0000 C CNN
	1    4400 1100
	0    -1   -1   0   
$EndComp
$Comp
L R-RESCUE-HDraht R10
U 1 1 55EB8F85
P 4350 1650
F 0 "R10" V 4430 1650 50  0000 C CNN
F 1 "680k" V 4350 1650 50  0000 C CNN
F 2 "Discret:R4" V 4280 1650 30  0001 C CNN
F 3 "" H 4350 1650 30  0000 C CNN
	1    4350 1650
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-HDraht R11
U 1 1 55EB8F8B
P 4350 2050
F 0 "R11" V 4430 2050 50  0000 C CNN
F 1 "33k" V 4350 2050 50  0000 C CNN
F 2 "Discret:R4" V 4280 2050 30  0001 C CNN
F 3 "" H 4350 2050 30  0000 C CNN
	1    4350 2050
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-HDraht #PWR025
U 1 1 55EB8F91
P 4350 2250
F 0 "#PWR025" H 4350 2000 50  0001 C CNN
F 1 "GND" H 4350 2100 50  0000 C CNN
F 2 "" H 4350 2250 60  0000 C CNN
F 3 "" H 4350 2250 60  0000 C CNN
	1    4350 2250
	1    0    0    -1  
$EndComp
$Comp
L CP1-RESCUE-HDraht C8
U 1 1 55EB8F99
P 4650 1850
F 0 "C8" H 4675 1950 50  0000 L CNN
F 1 "100µ" H 4675 1750 50  0000 L CNN
F 2 "Capacitors_Elko_ThroughHole:Elko_vert_11x5mm_RM2.5_CopperClear" H 4650 1850 60  0001 C CNN
F 3 "" H 4650 1850 60  0000 C CNN
	1    4650 1850
	0    -1   -1   0   
$EndComp
$Comp
L R-RESCUE-HDraht R12
U 1 1 55EB9B14
P 5250 1050
F 0 "R12" V 5330 1050 50  0000 C CNN
F 1 "10k" V 5250 1050 50  0000 C CNN
F 2 "Discret:R4" V 5180 1050 30  0001 C CNN
F 3 "" H 5250 1050 30  0000 C CNN
	1    5250 1050
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-HDraht R13
U 1 1 55EB9B1A
P 5250 1450
F 0 "R13" V 5330 1450 50  0000 C CNN
F 1 "10k" V 5250 1450 50  0000 C CNN
F 2 "Discret:R4" V 5180 1450 30  0001 C CNN
F 3 "" H 5250 1450 30  0000 C CNN
	1    5250 1450
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-HDraht #PWR026
U 1 1 55EB9B20
P 5250 1650
F 0 "#PWR026" H 5250 1400 50  0001 C CNN
F 1 "GND" H 5250 1500 50  0000 C CNN
F 2 "" H 5250 1650 60  0000 C CNN
F 3 "" H 5250 1650 60  0000 C CNN
	1    5250 1650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR027
U 1 1 55EB9DC1
P 5250 850
F 0 "#PWR027" H 5250 700 50  0001 C CNN
F 1 "+5V" H 5250 990 50  0000 C CNN
F 2 "" H 5250 850 60  0000 C CNN
F 3 "" H 5250 850 60  0000 C CNN
	1    5250 850 
	1    0    0    -1  
$EndComp
$Comp
L LM358N U2
U 1 1 55EBBCFE
P 7750 1350
F 0 "U2" H 7700 1550 60  0000 L CNN
F 1 "LM358N" H 7700 1100 60  0000 L CNN
F 2 "Housings_DIP:DIP-8_W7.62mm_LongPads" H 7750 1350 60  0001 C CNN
F 3 "" H 7750 1350 60  0000 C CNN
	1    7750 1350
	1    0    0    -1  
$EndComp
$Comp
L LM358N U2
U 2 1 55EBBEAF
P 9800 1350
F 0 "U2" H 9750 1550 60  0000 L CNN
F 1 "LM358N" H 9750 1100 60  0000 L CNN
F 2 "Housings_DIP:DIP-8_W7.62mm_LongPads" H 9800 1350 60  0001 C CNN
F 3 "" H 9800 1350 60  0000 C CNN
	2    9800 1350
	1    0    0    -1  
$EndComp
$Comp
L LM386 U3
U 1 1 55EBC495
P 9000 2400
F 0 "U3" H 9150 2600 60  0000 C CNN
F 1 "LM386" H 9150 2700 60  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm_LongPads" H 9000 2400 60  0001 C CNN
F 3 "" H 9000 2400 60  0000 C CNN
	1    9000 2400
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-HDraht R14
U 1 1 55EBD0FE
P 5750 1250
F 0 "R14" V 5830 1250 50  0000 C CNN
F 1 "12k" V 5750 1250 50  0000 C CNN
F 2 "Discret:R4" V 5680 1250 30  0001 C CNN
F 3 "" H 5750 1250 30  0000 C CNN
	1    5750 1250
	0    1    1    0   
$EndComp
$Comp
L R-RESCUE-HDraht R16
U 1 1 55EBD388
P 6150 1250
F 0 "R16" V 6230 1250 50  0000 C CNN
F 1 "110k" V 6150 1250 50  0000 C CNN
F 2 "Discret:R4" V 6080 1250 30  0001 C CNN
F 3 "" H 6150 1250 30  0000 C CNN
	1    6150 1250
	0    1    1    0   
$EndComp
$Comp
L R-RESCUE-HDraht R17
U 1 1 55EBD502
P 6550 1250
F 0 "R17" V 6630 1250 50  0000 C CNN
F 1 "36k" V 6550 1250 50  0000 C CNN
F 2 "Discret:R4" V 6480 1250 30  0001 C CNN
F 3 "" H 6550 1250 30  0000 C CNN
	1    6550 1250
	0    1    1    0   
$EndComp
$Comp
L C-RESCUE-HDraht C10
U 1 1 55EBD70C
P 5950 1450
F 0 "C10" H 5975 1550 50  0000 L CNN
F 1 "680p" H 5975 1350 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 5988 1300 30  0001 C CNN
F 3 "" H 5950 1450 60  0000 C CNN
	1    5950 1450
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-HDraht C13
U 1 1 55EBD7F1
P 6750 1450
F 0 "C13" H 6775 1550 50  0000 L CNN
F 1 "47p" H 6775 1350 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 6788 1300 30  0001 C CNN
F 3 "" H 6750 1450 60  0000 C CNN
	1    6750 1450
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-HDraht C11
U 1 1 55EBD8D7
P 6350 1050
F 0 "C11" H 6375 1150 50  0000 L CNN
F 1 "330p" H 6375 950 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 6388 900 30  0001 C CNN
F 3 "" H 6350 1050 60  0000 C CNN
	1    6350 1050
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-HDraht #PWR028
U 1 1 55EBE6CE
P 6750 1900
F 0 "#PWR028" H 6750 1650 50  0001 C CNN
F 1 "GND" H 6750 1750 50  0000 C CNN
F 2 "" H 6750 1900 60  0000 C CNN
F 3 "" H 6750 1900 60  0000 C CNN
	1    6750 1900
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR029
U 1 1 55EBEB07
P 7650 900
F 0 "#PWR029" H 7650 750 50  0001 C CNN
F 1 "+5V" H 7650 1040 50  0000 C CNN
F 2 "" H 7650 900 60  0000 C CNN
F 3 "" H 7650 900 60  0000 C CNN
	1    7650 900 
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-HDraht R19
U 1 1 55EC0A32
P 8550 1350
F 0 "R19" V 8630 1350 50  0000 C CNN
F 1 "6,2k" V 8550 1350 50  0000 C CNN
F 2 "Discret:R4" V 8480 1350 30  0001 C CNN
F 3 "" H 8550 1350 30  0000 C CNN
	1    8550 1350
	0    1    1    0   
$EndComp
$Comp
L R-RESCUE-HDraht R20
U 1 1 55EC145C
P 8950 1350
F 0 "R20" V 9030 1350 50  0000 C CNN
F 1 "22k" V 8950 1350 50  0000 C CNN
F 2 "Discret:R4" V 8880 1350 30  0001 C CNN
F 3 "" H 8950 1350 30  0000 C CNN
	1    8950 1350
	0    1    1    0   
$EndComp
$Comp
L C-RESCUE-HDraht C17
U 1 1 55EC1DDE
P 8750 1100
F 0 "C17" H 8775 1200 50  0000 L CNN
F 1 "6,8n" H 8775 1000 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 8788 950 30  0001 C CNN
F 3 "" H 8750 1100 60  0000 C CNN
	1    8750 1100
	1    0    0    -1  
$EndComp
Text Label 10500 1350 0    60   ~ 0
audio_filter_out
$Comp
L CP1-RESCUE-HDraht C14
U 1 1 55EC4098
P 7400 2400
F 0 "C14" H 7425 2500 50  0000 L CNN
F 1 "100µ" H 7425 2300 50  0000 L CNN
F 2 "Capacitors_Elko_ThroughHole:Elko_vert_11x5mm_RM2.5_CopperClear" H 7400 2400 60  0001 C CNN
F 3 "" H 7400 2400 60  0000 C CNN
	1    7400 2400
	0    -1   -1   0   
$EndComp
$Comp
L POT RV1
U 1 1 55EC414C
P 7700 2700
F 0 "RV1" H 7700 2600 50  0000 C CNN
F 1 "POT" H 7700 2700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x03" H 7700 2700 60  0001 C CNN
F 3 "" H 7700 2700 60  0000 C CNN
	1    7700 2700
	0    1    1    0   
$EndComp
$Comp
L GND-RESCUE-HDraht #PWR030
U 1 1 55EC48C8
P 7700 3050
F 0 "#PWR030" H 7700 2800 50  0001 C CNN
F 1 "GND" H 7700 2900 50  0000 C CNN
F 2 "" H 7700 3050 60  0000 C CNN
F 3 "" H 7700 3050 60  0000 C CNN
	1    7700 3050
	1    0    0    -1  
$EndComp
Text Label 7150 2400 2    60   ~ 0
audio_filter_out
$Comp
L +5V #PWR031
U 1 1 55EC6AEA
P 8900 1850
F 0 "#PWR031" H 8900 1700 50  0001 C CNN
F 1 "+5V" H 8900 1990 50  0000 C CNN
F 2 "" H 8900 1850 60  0000 C CNN
F 3 "" H 8900 1850 60  0000 C CNN
	1    8900 1850
	1    0    0    -1  
$EndComp
$Comp
L CP1-RESCUE-HDraht C16
U 1 1 55EC6CC6
P 8650 1900
F 0 "C16" H 8675 2000 50  0000 L CNN
F 1 "100µ" H 8675 1800 50  0000 L CNN
F 2 "Capacitors_Elko_ThroughHole:Elko_vert_11x5mm_RM2.5_CopperClear" H 8650 1900 60  0001 C CNN
F 3 "" H 8650 1900 60  0000 C CNN
	1    8650 1900
	0    1    1    0   
$EndComp
$Comp
L GND-RESCUE-HDraht #PWR032
U 1 1 55EC6FD3
P 8400 1900
F 0 "#PWR032" H 8400 1650 50  0001 C CNN
F 1 "GND" H 8400 1750 50  0000 C CNN
F 2 "" H 8400 1900 60  0000 C CNN
F 3 "" H 8400 1900 60  0000 C CNN
	1    8400 1900
	0    1    1    0   
$EndComp
NoConn ~ 9000 2800
NoConn ~ 9100 2800
$Comp
L C-RESCUE-HDraht C18
U 1 1 55EC8003
P 9650 2600
F 0 "C18" H 9675 2700 50  0000 L CNN
F 1 "50n" H 9675 2500 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 9688 2450 30  0001 C CNN
F 3 "" H 9650 2600 60  0000 C CNN
	1    9650 2600
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-HDraht R21
U 1 1 55EC80BA
P 9650 2950
F 0 "R21" V 9730 2950 50  0000 C CNN
F 1 "10" V 9650 2950 50  0000 C CNN
F 2 "Discret:R4" V 9580 2950 30  0001 C CNN
F 3 "" H 9650 2950 30  0000 C CNN
	1    9650 2950
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-HDraht #PWR033
U 1 1 55EC81B7
P 9650 3200
F 0 "#PWR033" H 9650 2950 50  0001 C CNN
F 1 "GND" H 9650 3050 50  0000 C CNN
F 2 "" H 9650 3200 60  0000 C CNN
F 3 "" H 9650 3200 60  0000 C CNN
	1    9650 3200
	1    0    0    -1  
$EndComp
$Comp
L CP1-RESCUE-HDraht C20
U 1 1 55EC94E2
P 10050 2400
F 0 "C20" H 10075 2500 50  0000 L CNN
F 1 "250µ" H 10075 2300 50  0000 L CNN
F 2 "Capacitors_Elko_ThroughHole:Elko_vert_11x5mm_RM2.5_CopperClear" H 10050 2400 60  0001 C CNN
F 3 "" H 10050 2400 60  0000 C CNN
	1    10050 2400
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X17 P6
U 1 1 55ECD6E1
P 10050 5150
F 0 "P6" H 10050 6050 50  0000 C CNN
F 1 "CONN_01X17" V 10150 5150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x17" H 10050 5150 60  0001 C CNN
F 3 "" H 10050 5150 60  0000 C CNN
	1    10050 5150
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR034
U 1 1 55ED01A1
P 9550 4350
F 0 "#PWR034" H 9550 4200 50  0001 C CNN
F 1 "+5V" H 9550 4490 50  0000 C CNN
F 2 "" H 9550 4350 60  0000 C CNN
F 3 "" H 9550 4350 60  0000 C CNN
	1    9550 4350
	0    -1   -1   0   
$EndComp
$Comp
L CP1-RESCUE-HDraht C19
U 1 1 55ED095F
P 9750 4150
F 0 "C19" H 9775 4250 50  0000 L CNN
F 1 "10µ" H 9775 4050 50  0000 L CNN
F 2 "Capacitors_Elko_ThroughHole:Elko_vert_11x5mm_RM2.5_CopperClear" H 9750 4150 60  0001 C CNN
F 3 "" H 9750 4150 60  0000 C CNN
	1    9750 4150
	-1   0    0    1   
$EndComp
$Comp
L GND-RESCUE-HDraht #PWR035
U 1 1 55ED0CA2
P 9750 3950
F 0 "#PWR035" H 9750 3700 50  0001 C CNN
F 1 "GND" H 9750 3800 50  0000 C CNN
F 2 "" H 9750 3950 60  0000 C CNN
F 3 "" H 9750 3950 60  0000 C CNN
	1    9750 3950
	-1   0    0    1   
$EndComp
$Comp
L TLC5940 U4
U 1 1 55EDBE13
P 9100 5200
F 0 "U4" H 8750 6000 60  0000 C CNN
F 1 "TLC5940" H 9100 4400 60  0000 C CNN
F 2 "Housings_DIP:DIP-28_W7.62mm_LongPads" H 9100 5100 60  0001 C CNN
F 3 "" H 9100 5100 60  0000 C CNN
	1    9100 5200
	-1   0    0    1   
$EndComp
NoConn ~ 5700 4800
NoConn ~ 5700 5000
NoConn ~ 8400 4650
NoConn ~ 8400 4750
Text Label 3450 5100 2    60   ~ 0
CLKO
Text Label 8300 4850 2    60   ~ 0
CLKO
$Comp
L C-RESCUE-HDraht C15
U 1 1 55EDFAC6
P 7500 5350
F 0 "C15" H 7525 5450 50  0000 L CNN
F 1 "100n" H 7525 5250 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 7538 5200 30  0001 C CNN
F 3 "" H 7500 5350 60  0000 C CNN
	1    7500 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3450 4850 3400
Wire Wire Line
	4450 3450 4450 3400
Wire Wire Line
	6550 4500 6500 4500
Wire Wire Line
	3200 3800 3600 3800
Wire Wire Line
	2850 3800 2900 3800
Wire Wire Line
	3100 1350 3300 1350
Wire Wire Line
	3200 1400 3200 1350
Connection ~ 3200 1350
Wire Wire Line
	3200 1750 3200 1700
Wire Wire Line
	1950 1750 3200 1750
Wire Wire Line
	2700 1650 2700 1800
Wire Wire Line
	1900 1350 2300 1350
Wire Wire Line
	2200 1350 2200 1400
Wire Wire Line
	2200 1700 2200 1750
Connection ~ 2700 1750
Connection ~ 2200 1350
Wire Wire Line
	1900 1450 1950 1450
Wire Wire Line
	1950 1450 1950 1750
Connection ~ 2200 1750
Wire Wire Line
	2700 6800 2650 6800
Wire Wire Line
	2650 7000 2700 7000
Wire Wire Line
	2700 7200 2650 7200
Wire Wire Line
	6200 4500 5700 4500
Wire Wire Line
	3550 4500 3600 4500
Wire Wire Line
	6000 4400 5700 4400
Wire Wire Line
	4450 3450 4850 3450
Wire Wire Line
	4650 3450 4650 3500
Connection ~ 4650 3450
Wire Wire Line
	4450 3100 4450 3050
Wire Wire Line
	4450 3050 4850 3050
Wire Wire Line
	4650 3050 4650 3000
Wire Wire Line
	4850 3050 4850 3100
Connection ~ 4650 3050
Wire Wire Line
	3500 4400 3600 4400
Wire Wire Line
	5950 4600 5700 4600
Wire Wire Line
	2800 4800 3100 4800
Wire Wire Line
	2950 4800 2950 4750
Wire Wire Line
	2800 4500 3100 4500
Wire Wire Line
	2950 4500 2950 4550
Wire Wire Line
	3600 4600 3100 4600
Wire Wire Line
	3100 4600 3100 4500
Connection ~ 2950 4500
Wire Wire Line
	3600 4700 3100 4700
Wire Wire Line
	3100 4700 3100 4800
Connection ~ 2950 4800
Wire Wire Line
	2400 4650 2450 4650
Wire Wire Line
	2450 4500 2450 4800
Wire Wire Line
	2450 4500 2500 4500
Wire Wire Line
	2450 4800 2500 4800
Connection ~ 2450 4650
Wire Wire Line
	2300 7300 2700 7300
Wire Wire Line
	2300 7100 2700 7100
Wire Wire Line
	2300 6900 2700 6900
Wire Wire Line
	6550 3450 6450 3450
Wire Wire Line
	5950 3350 6550 3350
Wire Wire Line
	5950 2750 5950 2900
Wire Wire Line
	5950 3800 5700 3800
Wire Wire Line
	2150 3150 2150 3050
Wire Wire Line
	2050 3200 2050 3050
Wire Wire Line
	3600 3900 2250 3900
Wire Wire Line
	2250 3900 2250 3050
Wire Wire Line
	2350 3050 2350 4000
Wire Wire Line
	2350 4000 3600 4000
Wire Wire Line
	3350 3800 3350 3450
Wire Wire Line
	3350 3450 3200 3450
Connection ~ 3350 3800
Wire Wire Line
	2450 3050 2450 3450
Wire Wire Line
	2450 3450 2900 3450
Wire Wire Line
	5950 3200 5950 3800
Connection ~ 5950 3350
Wire Wire Line
	2100 7200 2350 7200
Wire Wire Line
	2150 6100 2400 6100
Wire Wire Line
	2150 6000 2600 6000
Wire Wire Line
	2950 6000 2900 6000
Wire Wire Line
	2950 5900 2900 5900
Wire Wire Line
	2600 5900 2150 5900
Wire Wire Line
	2950 5800 2900 5800
Wire Wire Line
	2600 5800 2150 5800
Wire Wire Line
	3450 4100 3600 4100
Wire Wire Line
	3600 4200 3450 4200
Wire Wire Line
	3450 4300 3600 4300
Wire Wire Line
	2050 7000 2350 7000
Wire Wire Line
	2350 6800 2050 6800
Wire Wire Line
	5950 3900 5700 3900
Wire Wire Line
	5950 4000 5700 4000
Wire Wire Line
	5950 4100 5700 4100
Wire Wire Line
	5950 4200 5700 4200
Wire Wire Line
	5950 4300 5700 4300
Wire Wire Line
	3600 5100 3450 5100
Wire Wire Line
	3600 4800 3500 4800
Wire Wire Line
	3500 4900 3600 4900
Wire Wire Line
	4100 1500 4100 1450
Wire Wire Line
	4100 1050 4100 1150
Wire Wire Line
	4250 1100 4100 1100
Connection ~ 4100 1100
Wire Wire Line
	4100 700  4100 750 
Wire Wire Line
	4550 1100 4700 1100
Wire Wire Line
	4700 1100 4700 1250
Wire Wire Line
	4700 1250 5600 1250
Wire Wire Line
	4350 2250 4350 2200
Wire Wire Line
	4350 1800 4350 1900
Wire Wire Line
	4500 1850 4350 1850
Connection ~ 4350 1850
Wire Wire Line
	4350 1450 4350 1500
Wire Wire Line
	5000 1850 4800 1850
Wire Wire Line
	5000 1850 5000 1250
Connection ~ 5000 1250
Wire Wire Line
	5250 1650 5250 1600
Wire Wire Line
	5250 1200 5250 1300
Connection ~ 5250 1250
Wire Wire Line
	5250 850  5250 900 
Wire Wire Line
	6700 1250 7250 1250
Wire Wire Line
	6750 1300 6750 1250
Connection ~ 6750 1250
Wire Wire Line
	6300 1250 6400 1250
Wire Wire Line
	6350 1250 6350 1200
Connection ~ 6350 1250
Wire Wire Line
	5900 1250 6000 1250
Wire Wire Line
	5950 1250 5950 1300
Connection ~ 5950 1250
Wire Wire Line
	7650 1850 7650 1750
Wire Wire Line
	5950 1850 7650 1850
Wire Wire Line
	6750 1600 6750 1900
Wire Wire Line
	5950 1850 5950 1600
Connection ~ 6750 1850
Wire Wire Line
	7650 900  7650 950 
Wire Wire Line
	7250 1450 7150 1450
Wire Wire Line
	7150 1450 7150 600 
Wire Wire Line
	6350 600  8350 600 
Wire Wire Line
	8350 600  8350 1350
Wire Wire Line
	8250 1350 8400 1350
Wire Wire Line
	6350 600  6350 900 
Connection ~ 7150 600 
Wire Wire Line
	8700 1350 8800 1350
Connection ~ 8350 1350
Wire Wire Line
	9100 1350 9200 1350
Wire Wire Line
	9200 1350 9200 1250
Wire Wire Line
	9200 1250 9300 1250
Wire Wire Line
	9300 1450 9250 1450
Wire Wire Line
	9250 1450 9250 800 
Wire Wire Line
	8750 800  10400 800 
Wire Wire Line
	10400 800  10400 1350
Wire Wire Line
	10300 1350 10500 1350
Wire Wire Line
	8750 1250 8750 1350
Connection ~ 8750 1350
Wire Wire Line
	8750 800  8750 950 
Connection ~ 9250 800 
Connection ~ 10400 1350
Wire Wire Line
	7700 2400 7700 2450
Wire Wire Line
	7550 2400 7700 2400
Wire Wire Line
	7700 2950 7700 3050
Wire Wire Line
	7150 2400 7250 2400
Wire Wire Line
	7850 2700 8000 2700
Wire Wire Line
	8000 2700 8000 2300
Wire Wire Line
	8000 2300 8500 2300
Wire Wire Line
	8900 1850 8900 2000
Wire Wire Line
	8800 1900 8900 1900
Connection ~ 8900 1900
Wire Wire Line
	8400 1900 8500 1900
Wire Wire Line
	7700 3000 8900 3000
Wire Wire Line
	8200 3000 8200 2500
Wire Wire Line
	8200 2500 8500 2500
Connection ~ 7700 3000
Wire Wire Line
	8900 3000 8900 2800
Connection ~ 8200 3000
Wire Wire Line
	9650 3100 9650 3200
Wire Wire Line
	9650 2800 9650 2750
Wire Wire Line
	9650 2450 9650 2400
Connection ~ 9650 2400
Wire Wire Line
	10300 3150 9650 3150
Wire Wire Line
	10300 2600 10300 3150
Connection ~ 9650 3150
Wire Wire Line
	9500 2400 9900 2400
Wire Wire Line
	10200 2400 10350 2400
Wire Wire Line
	9550 4350 9850 4350
Wire Wire Line
	9750 3950 9750 4000
Wire Wire Line
	9750 4300 9750 4350
Connection ~ 9750 4350
Wire Wire Line
	9550 4450 9850 4450
Wire Wire Line
	9800 4550 9850 4550
Wire Wire Line
	9850 4650 9800 4650
Wire Wire Line
	9800 4750 9850 4750
Wire Wire Line
	9850 4850 9800 4850
Wire Wire Line
	9800 4950 9850 4950
Wire Wire Line
	9850 5050 9800 5050
Wire Wire Line
	9800 5150 9850 5150
Wire Wire Line
	9850 5250 9800 5250
Wire Wire Line
	9850 5350 9800 5350
Wire Wire Line
	9650 5950 9850 5950
Wire Wire Line
	9850 5850 9800 5850
Wire Wire Line
	9800 5750 9850 5750
Wire Wire Line
	9850 5650 9800 5650
Wire Wire Line
	9800 5550 9850 5550
Wire Wire Line
	9850 5450 9800 5450
Wire Wire Line
	8400 4550 8350 4550
Wire Wire Line
	8350 4550 8350 4400
Wire Wire Line
	8350 4400 9550 4400
Wire Wire Line
	9550 4400 9550 4450
Wire Wire Line
	8400 5850 8350 5850
Wire Wire Line
	8350 5850 8350 6000
Wire Wire Line
	8350 6000 9650 6000
Wire Wire Line
	9650 6000 9650 5950
Wire Wire Line
	8300 4850 8400 4850
Wire Wire Line
	7500 5100 7500 5200
Connection ~ 7500 5150
Wire Wire Line
	7500 5500 7500 5600
Wire Wire Line
	7500 5550 7650 5550
Wire Wire Line
	7650 5550 7650 5250
Wire Wire Line
	7650 5250 8400 5250
Wire Wire Line
	7500 5150 8400 5150
Wire Wire Line
	8300 4950 8400 4950
Text Label 8300 5350 2    60   ~ 0
BLANK
Wire Wire Line
	8300 5350 8400 5350
Text Label 8300 5450 2    60   ~ 0
LATCH
Text Label 8300 5550 2    60   ~ 0
SCLK
Text Label 8300 5650 2    60   ~ 0
SIN
Wire Wire Line
	8300 5650 8400 5650
Wire Wire Line
	8400 5550 8300 5550
Wire Wire Line
	8300 5450 8400 5450
Text Label 8300 5750 2    60   ~ 0
VPRG
Wire Wire Line
	8300 5750 8400 5750
Text Label 5950 4100 0    60   ~ 0
BLANK
Text Label 5950 4200 0    60   ~ 0
LATCH
Text Label 5950 4700 0    60   ~ 0
SCLK
Text Label 5950 4900 0    60   ~ 0
SIN
Text Label 5950 4300 0    60   ~ 0
VPRG
Wire Wire Line
	5700 4700 5950 4700
Wire Wire Line
	5950 4900 5700 4900
$Comp
L GND-RESCUE-HDraht #PWR036
U 1 1 55EE3F8E
P 7500 5600
F 0 "#PWR036" H 7500 5350 50  0001 C CNN
F 1 "GND" H 7500 5450 50  0000 C CNN
F 2 "" H 7500 5600 60  0000 C CNN
F 3 "" H 7500 5600 60  0000 C CNN
	1    7500 5600
	1    0    0    -1  
$EndComp
Connection ~ 7500 5550
$Comp
L +5V #PWR037
U 1 1 55EE42E5
P 7500 5100
F 0 "#PWR037" H 7500 4950 50  0001 C CNN
F 1 "+5V" H 7500 5240 50  0000 C CNN
F 2 "" H 7500 5100 60  0000 C CNN
F 3 "" H 7500 5100 60  0000 C CNN
	1    7500 5100
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-HDraht R18
U 1 1 55EE487E
P 8150 5050
F 0 "R18" V 8230 5050 50  0000 C CNN
F 1 "2k" V 8150 5050 50  0000 C CNN
F 2 "Discret:R4" V 8080 5050 30  0001 C CNN
F 3 "" H 8150 5050 30  0000 C CNN
	1    8150 5050
	0    1    1    0   
$EndComp
$Comp
L GND-RESCUE-HDraht #PWR038
U 1 1 55EE4990
P 7950 5050
F 0 "#PWR038" H 7950 4800 50  0001 C CNN
F 1 "GND" H 7950 4900 50  0000 C CNN
F 2 "" H 7950 5050 60  0000 C CNN
F 3 "" H 7950 5050 60  0000 C CNN
	1    7950 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	7950 5050 8000 5050
Wire Wire Line
	8400 5050 8300 5050
$Comp
L +5V #PWR039
U 1 1 55EE5AB8
P 8300 4950
F 0 "#PWR039" H 8300 4800 50  0001 C CNN
F 1 "+5V" H 8300 5090 50  0000 C CNN
F 2 "" H 8300 4950 60  0000 C CNN
F 3 "" H 8300 4950 60  0000 C CNN
	1    8300 4950
	0    -1   -1   0   
$EndComp
NoConn ~ 3600 5000
NoConn ~ 5700 5100
Wire Wire Line
	10350 2600 10300 2600
NoConn ~ 10350 2500
$Comp
L ATMEGA328P-P IC?
U 1 1 563A24CC
P 4650 4450
F 0 "IC?" H 3900 5250 40  0000 L BNN
F 1 "ATMEGA328P-P" H 5050 3600 40  0000 L BNN
F 2 "DIL28" H 4650 4450 30  0000 C CIN
F 3 "" H 4650 4450 60  0000 C CNN
	1    4650 4450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
