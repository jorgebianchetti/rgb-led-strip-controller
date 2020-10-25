EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_01x19_Male J4
U 1 1 5F4048F1
P 9050 2100
F 0 "J4" H 9150 3250 50  0000 C CNN
F 1 "Conn_01x19_Male" H 9200 3150 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x19_P2.54mm_Vertical" H 9050 2100 50  0001 C CNN
F 3 "~" H 9050 2100 50  0001 C CNN
	1    9050 2100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x19_Male J5
U 1 1 5F405F3D
P 9900 2150
F 0 "J5" H 10000 3300 50  0000 C CNN
F 1 "Conn_01x19_Male" H 10050 3200 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x19_P2.54mm_Vertical" H 9900 2150 50  0001 C CNN
F 3 "~" H 9900 2150 50  0001 C CNN
	1    9900 2150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5F408205
P 1650 1850
F 0 "J1" H 1600 2000 50  0000 C CNN
F 1 "Conn_01x02_Male" V 1500 1850 50  0000 C CNN
F 2 "LED_Strip_Controller:SIP-2" H 1650 1850 50  0001 C CNN
F 3 "~" H 1650 1850 50  0001 C CNN
	1    1650 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5F40A843
P 2700 6400
F 0 "D1" H 2693 6617 50  0000 C CNN
F 1 "LED" H 2693 6526 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 2700 6400 50  0001 C CNN
F 3 "~" H 2700 6400 50  0001 C CNN
	1    2700 6400
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5F40AFB5
P 2700 6950
F 0 "D2" H 2693 7167 50  0000 C CNN
F 1 "LED" H 2693 7076 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 2700 6950 50  0001 C CNN
F 3 "~" H 2700 6950 50  0001 C CNN
	1    2700 6950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT POT1
U 1 1 5F40BD18
P 1250 6700
F 0 "POT1" H 1181 6746 50  0000 R CNN
F 1 "R_POT" H 1181 6655 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1250 6700 50  0001 C CNN
F 3 "~" H 1250 6700 50  0001 C CNN
	1    1250 6700
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM1117-3.3 U1
U 1 1 5F40E1E2
P 1800 3750
F 0 "U1" H 1800 3992 50  0000 C CNN
F 1 "LM1117-3.3" H 1800 3901 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 1800 3750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 1800 3750 50  0001 C CNN
	1    1800 3750
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:TIP41A Q2
U 1 1 5F40EE42
P 5800 3850
F 0 "Q2" H 5990 3896 50  0000 L CNN
F 1 "TIP41A" H 5990 3805 50  0000 L CNN
F 2 "LED_Strip_Controller:TO-220-3_Horizontal_TabDown" H 6050 3775 50  0001 L CIN
F 3 "https://www.centralsemi.com/get_document.php?cmp=1&mergetype=pd&mergepath=pd&pdf_id=tip41.PDF" H 5800 3850 50  0001 L CNN
	1    5800 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5F41651F
P 10425 3250
F 0 "#PWR0101" H 10425 3000 50  0001 C CNN
F 1 "GND" H 10430 3077 50  0000 C CNN
F 2 "" H 10425 3250 50  0001 C CNN
F 3 "" H 10425 3250 50  0001 C CNN
	1    10425 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10425 3250 10425 3050
Wire Wire Line
	10425 1850 10100 1850
Wire Wire Line
	10100 3050 10425 3050
Connection ~ 10425 3050
Wire Wire Line
	10425 3050 10425 1850
$Comp
L power:GND #PWR0102
U 1 1 5F418605
P 9400 3250
F 0 "#PWR0102" H 9400 3000 50  0001 C CNN
F 1 "GND" H 9405 3077 50  0000 C CNN
F 2 "" H 9400 3250 50  0001 C CNN
F 3 "" H 9400 3250 50  0001 C CNN
	1    9400 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 3250 9400 3000
Wire Wire Line
	9400 3000 9250 3000
Text Label 9250 1900 0    50   ~ 0
PWM1
Text Label 9250 1800 0    50   ~ 0
PWM2
Text Label 9250 1700 0    50   ~ 0
PWM3
$Comp
L Device:C C4
U 1 1 5F42167E
P 4750 6900
F 0 "C4" H 4865 6946 50  0000 L CNN
F 1 "C" H 4865 6855 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 4788 6750 50  0001 C CNN
F 3 "~" H 4750 6900 50  0001 C CNN
	1    4750 6900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5F426617
P 3950 7000
F 0 "#PWR0103" H 3950 6750 50  0001 C CNN
F 1 "GND" H 3955 6827 50  0000 C CNN
F 2 "" H 3950 7000 50  0001 C CNN
F 3 "" H 3950 7000 50  0001 C CNN
	1    3950 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 6650 4750 6600
Wire Wire Line
	4750 6750 4750 6650
Connection ~ 4750 6650
$Comp
L power:GND #PWR0104
U 1 1 5F427DFA
P 4750 7050
F 0 "#PWR0104" H 4750 6800 50  0001 C CNN
F 1 "GND" H 4755 6877 50  0000 C CNN
F 2 "" H 4750 7050 50  0001 C CNN
F 3 "" H 4750 7050 50  0001 C CNN
	1    4750 7050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0105
U 1 1 5F428304
P 2400 3700
F 0 "#PWR0105" H 2400 3550 50  0001 C CNN
F 1 "+3.3V" H 2415 3873 50  0000 C CNN
F 2 "" H 2400 3700 50  0001 C CNN
F 3 "" H 2400 3700 50  0001 C CNN
	1    2400 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5F422817
P 4750 6450
F 0 "R6" H 4820 6496 50  0000 L CNN
F 1 "R" H 4820 6405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4680 6450 50  0001 C CNN
F 3 "~" H 4750 6450 50  0001 C CNN
	1    4750 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 6650 4600 6650
Wire Wire Line
	4100 6650 3950 6650
Wire Wire Line
	3950 6650 3950 6850
Wire Wire Line
	4100 6850 3950 6850
Connection ~ 3950 6850
Wire Wire Line
	3950 6850 3950 7000
Wire Wire Line
	4500 6850 4600 6850
Wire Wire Line
	4600 6850 4600 6650
Connection ~ 4600 6650
Wire Wire Line
	4600 6650 4750 6650
$Comp
L Device:C C5
U 1 1 5F436FA8
P 6350 6900
F 0 "C5" H 6465 6946 50  0000 L CNN
F 1 "C" H 6465 6855 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 6388 6750 50  0001 C CNN
F 3 "~" H 6350 6900 50  0001 C CNN
	1    6350 6900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5F436FAE
P 5550 7000
F 0 "#PWR0106" H 5550 6750 50  0001 C CNN
F 1 "GND" H 5555 6827 50  0000 C CNN
F 2 "" H 5550 7000 50  0001 C CNN
F 3 "" H 5550 7000 50  0001 C CNN
	1    5550 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 6650 6350 6600
Wire Wire Line
	6350 6750 6350 6650
Connection ~ 6350 6650
$Comp
L power:GND #PWR0107
U 1 1 5F436FB7
P 6350 7050
F 0 "#PWR0107" H 6350 6800 50  0001 C CNN
F 1 "GND" H 6355 6877 50  0000 C CNN
F 2 "" H 6350 7050 50  0001 C CNN
F 3 "" H 6350 7050 50  0001 C CNN
	1    6350 7050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0108
U 1 1 5F436FBD
P 6350 6300
F 0 "#PWR0108" H 6350 6150 50  0001 C CNN
F 1 "+3.3V" H 6365 6473 50  0000 C CNN
F 2 "" H 6350 6300 50  0001 C CNN
F 3 "" H 6350 6300 50  0001 C CNN
	1    6350 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5F436FC3
P 6350 6450
F 0 "R10" H 6420 6496 50  0000 L CNN
F 1 "R" H 6420 6405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6280 6450 50  0001 C CNN
F 3 "~" H 6350 6450 50  0001 C CNN
	1    6350 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 6650 6200 6650
Wire Wire Line
	5700 6650 5550 6650
Wire Wire Line
	5550 6650 5550 6850
Wire Wire Line
	5700 6850 5550 6850
Connection ~ 5550 6850
Wire Wire Line
	5550 6850 5550 7000
Wire Wire Line
	6100 6850 6200 6850
Wire Wire Line
	6200 6850 6200 6650
Connection ~ 6200 6650
Wire Wire Line
	6200 6650 6350 6650
Text Label 4750 6650 0    50   ~ 0
BT1
Text Label 6350 6650 0    50   ~ 0
BT2
Text Label 9250 2600 0    50   ~ 0
BT1
Text Label 9250 2500 0    50   ~ 0
BT2
$Comp
L power:+3.3V #PWR0109
U 1 1 5F450598
P 10450 1150
F 0 "#PWR0109" H 10450 1000 50  0001 C CNN
F 1 "+3.3V" H 10465 1323 50  0000 C CNN
F 2 "" H 10450 1150 50  0001 C CNN
F 3 "" H 10450 1150 50  0001 C CNN
	1    10450 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 1150 10450 1250
Wire Wire Line
	10450 1250 10100 1250
$Comp
L power:GND #PWR0110
U 1 1 5F4550F5
P 2350 7050
F 0 "#PWR0110" H 2350 6800 50  0001 C CNN
F 1 "GND" H 2355 6877 50  0000 C CNN
F 2 "" H 2350 7050 50  0001 C CNN
F 3 "" H 2350 7050 50  0001 C CNN
	1    2350 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 6950 2350 7050
Wire Wire Line
	2550 6400 2350 6400
Wire Wire Line
	2350 6400 2350 6950
Connection ~ 2350 6950
$Comp
L Device:R R1
U 1 1 5F456606
P 3100 6400
F 0 "R1" V 2893 6400 50  0000 C CNN
F 1 "R" V 2984 6400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3030 6400 50  0001 C CNN
F 3 "~" H 3100 6400 50  0001 C CNN
	1    3100 6400
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5F456EB7
P 3100 6950
F 0 "R2" V 2893 6950 50  0000 C CNN
F 1 "R" V 2984 6950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3030 6950 50  0001 C CNN
F 3 "~" H 3100 6950 50  0001 C CNN
	1    3100 6950
	0    1    1    0   
$EndComp
Text Label 3250 6400 0    50   ~ 0
LED1
Text Label 3250 6950 0    50   ~ 0
LED2
Wire Wire Line
	2950 6950 2850 6950
Wire Wire Line
	2850 6400 2950 6400
Text Label 9250 2100 0    50   ~ 0
LED1
Text Label 9250 2200 0    50   ~ 0
LED2
$Comp
L power:GND #PWR0111
U 1 1 5F45B52C
P 1800 4050
F 0 "#PWR0111" H 1800 3800 50  0001 C CNN
F 1 "GND" H 1805 3877 50  0000 C CNN
F 2 "" H 1800 4050 50  0001 C CNN
F 3 "" H 1800 4050 50  0001 C CNN
	1    1800 4050
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0112
U 1 1 5F45C498
P 1400 3700
F 0 "#PWR0112" H 1400 3550 50  0001 C CNN
F 1 "+12V" H 1415 3873 50  0000 C CNN
F 2 "" H 1400 3700 50  0001 C CNN
F 3 "" H 1400 3700 50  0001 C CNN
	1    1400 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5F45CF6E
P 1400 4000
F 0 "C1" H 1518 4046 50  0000 L CNN
F 1 "CP" H 1518 3955 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 1438 3850 50  0001 C CNN
F 3 "~" H 1400 4000 50  0001 C CNN
	1    1400 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5F45D679
P 2200 4000
F 0 "C2" H 2318 4046 50  0000 L CNN
F 1 "CP" H 2318 3955 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 2238 3850 50  0001 C CNN
F 3 "~" H 2200 4000 50  0001 C CNN
	1    2200 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5F45DF73
P 1400 4200
F 0 "#PWR0113" H 1400 3950 50  0001 C CNN
F 1 "GND" H 1405 4027 50  0000 C CNN
F 2 "" H 1400 4200 50  0001 C CNN
F 3 "" H 1400 4200 50  0001 C CNN
	1    1400 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5F45E132
P 2400 4200
F 0 "#PWR0114" H 2400 3950 50  0001 C CNN
F 1 "GND" H 2405 4027 50  0000 C CNN
F 2 "" H 2400 4200 50  0001 C CNN
F 3 "" H 2400 4200 50  0001 C CNN
	1    2400 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 3700 1400 3750
Wire Wire Line
	1500 3750 1400 3750
Connection ~ 1400 3750
Wire Wire Line
	1400 3750 1400 3850
Wire Wire Line
	2100 3750 2200 3750
Connection ~ 2200 3750
Wire Wire Line
	2200 3750 2200 3850
$Comp
L Device:C C3
U 1 1 5F460C11
P 2600 4000
F 0 "C3" H 2715 4046 50  0000 L CNN
F 1 "C" H 2715 3955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 2638 3850 50  0001 C CNN
F 3 "~" H 2600 4000 50  0001 C CNN
	1    2600 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 4150 1400 4200
Wire Wire Line
	2200 4200 2200 4150
Wire Wire Line
	2200 4200 2400 4200
Wire Wire Line
	2400 4200 2600 4200
Wire Wire Line
	2600 4200 2600 4150
Connection ~ 2400 4200
Wire Wire Line
	2200 3750 2400 3750
Wire Wire Line
	2600 3750 2600 3850
Wire Wire Line
	2400 3700 2400 3750
Connection ~ 2400 3750
Wire Wire Line
	2400 3750 2600 3750
$Comp
L power:+3.3V #PWR0115
U 1 1 5F46875B
P 4750 6300
F 0 "#PWR0115" H 4750 6150 50  0001 C CNN
F 1 "+3.3V" H 4765 6473 50  0000 C CNN
F 2 "" H 4750 6300 50  0001 C CNN
F 3 "" H 4750 6300 50  0001 C CNN
	1    4750 6300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5F470DAA
P 1950 2000
F 0 "#PWR0116" H 1950 1750 50  0001 C CNN
F 1 "GND" H 1955 1827 50  0000 C CNN
F 2 "" H 1950 2000 50  0001 C CNN
F 3 "" H 1950 2000 50  0001 C CNN
	1    1950 2000
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0117
U 1 1 5F4711A9
P 1950 1800
F 0 "#PWR0117" H 1950 1650 50  0001 C CNN
F 1 "+12V" H 1965 1973 50  0000 C CNN
F 2 "" H 1950 1800 50  0001 C CNN
F 3 "" H 1950 1800 50  0001 C CNN
	1    1950 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1850 1950 1850
Wire Wire Line
	1950 1850 1950 1800
Wire Wire Line
	1850 1950 1950 1950
Wire Wire Line
	1950 1950 1950 2000
Text Label 10100 2650 0    50   ~ 0
ADC1
$Comp
L power:GND #PWR0118
U 1 1 5F47614C
P 1250 6850
F 0 "#PWR0118" H 1250 6600 50  0001 C CNN
F 1 "GND" H 1255 6677 50  0000 C CNN
F 2 "" H 1250 6850 50  0001 C CNN
F 3 "" H 1250 6850 50  0001 C CNN
	1    1250 6850
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0119
U 1 1 5F47649A
P 1250 6550
F 0 "#PWR0119" H 1250 6400 50  0001 C CNN
F 1 "+3.3V" H 1265 6723 50  0000 C CNN
F 2 "" H 1250 6550 50  0001 C CNN
F 3 "" H 1250 6550 50  0001 C CNN
	1    1250 6550
	1    0    0    -1  
$EndComp
Text Label 1400 6700 0    50   ~ 0
ADC1
$Comp
L Device:R R7
U 1 1 5F47AF9A
P 5250 3850
F 0 "R7" V 5043 3850 50  0000 C CNN
F 1 "R" V 5134 3850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5180 3850 50  0001 C CNN
F 3 "~" H 5250 3850 50  0001 C CNN
	1    5250 3850
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5F47B655
P 5500 4100
F 0 "R8" H 5430 4054 50  0000 R CNN
F 1 "R" H 5430 4145 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5430 4100 50  0001 C CNN
F 3 "~" H 5500 4100 50  0001 C CNN
	1    5500 4100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R9
U 1 1 5F47C6F3
P 5900 3400
F 0 "R9" H 5970 3446 50  0000 L CNN
F 1 "R" H 5970 3355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5830 3400 50  0001 C CNN
F 3 "~" H 5900 3400 50  0001 C CNN
	1    5900 3400
	1    0    0    -1  
$EndComp
Text Label 5100 3850 2    50   ~ 0
PWM2
$Comp
L power:GND #PWR0120
U 1 1 5F47D0FB
P 5750 4350
F 0 "#PWR0120" H 5750 4100 50  0001 C CNN
F 1 "GND" H 5755 4177 50  0000 C CNN
F 2 "" H 5750 4350 50  0001 C CNN
F 3 "" H 5750 4350 50  0001 C CNN
	1    5750 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 4350 5500 4350
Wire Wire Line
	5500 4350 5500 4250
Wire Wire Line
	5750 4350 5900 4350
Wire Wire Line
	5900 4350 5900 4050
Connection ~ 5750 4350
Wire Wire Line
	5400 3850 5500 3850
Wire Wire Line
	5500 3950 5500 3850
Connection ~ 5500 3850
Wire Wire Line
	5500 3850 5600 3850
Wire Wire Line
	5900 3650 5900 3550
$Comp
L Transistor_BJT:TIP41A Q3
U 1 1 5F48DD67
P 7200 3850
F 0 "Q3" H 7390 3896 50  0000 L CNN
F 1 "TIP41A" H 7390 3805 50  0000 L CNN
F 2 "LED_Strip_Controller:TO-220-3_Horizontal_TabDown" H 7450 3775 50  0001 L CIN
F 3 "https://www.centralsemi.com/get_document.php?cmp=1&mergetype=pd&mergepath=pd&pdf_id=tip41.PDF" H 7200 3850 50  0001 L CNN
	1    7200 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5F48DD6D
P 6650 3850
F 0 "R11" V 6443 3850 50  0000 C CNN
F 1 "R" V 6534 3850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6580 3850 50  0001 C CNN
F 3 "~" H 6650 3850 50  0001 C CNN
	1    6650 3850
	0    1    1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 5F48DD73
P 6900 4100
F 0 "R12" H 6830 4054 50  0000 R CNN
F 1 "R" H 6830 4145 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6830 4100 50  0001 C CNN
F 3 "~" H 6900 4100 50  0001 C CNN
	1    6900 4100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R13
U 1 1 5F48DD79
P 7300 3400
F 0 "R13" H 7370 3446 50  0000 L CNN
F 1 "R" H 7370 3355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 7230 3400 50  0001 C CNN
F 3 "~" H 7300 3400 50  0001 C CNN
	1    7300 3400
	1    0    0    -1  
$EndComp
Text Label 6500 3850 2    50   ~ 0
PWM3
$Comp
L power:GND #PWR0121
U 1 1 5F48DD80
P 7150 4350
F 0 "#PWR0121" H 7150 4100 50  0001 C CNN
F 1 "GND" H 7155 4177 50  0000 C CNN
F 2 "" H 7150 4350 50  0001 C CNN
F 3 "" H 7150 4350 50  0001 C CNN
	1    7150 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 4350 6900 4350
Wire Wire Line
	6900 4350 6900 4250
Wire Wire Line
	7150 4350 7300 4350
Wire Wire Line
	7300 4350 7300 4050
Connection ~ 7150 4350
Wire Wire Line
	6800 3850 6900 3850
Wire Wire Line
	6900 3950 6900 3850
Connection ~ 6900 3850
Wire Wire Line
	6900 3850 7000 3850
Wire Wire Line
	7300 3650 7300 3550
$Comp
L Transistor_BJT:TIP41A Q1
U 1 1 5F49517D
P 4400 3850
F 0 "Q1" H 4590 3896 50  0000 L CNN
F 1 "TIP41A" H 4590 3805 50  0000 L CNN
F 2 "LED_Strip_Controller:TO-220-3_Horizontal_TabDown" H 4650 3775 50  0001 L CIN
F 3 "https://www.centralsemi.com/get_document.php?cmp=1&mergetype=pd&mergepath=pd&pdf_id=tip41.PDF" H 4400 3850 50  0001 L CNN
	1    4400 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5F495183
P 3850 3850
F 0 "R3" V 3643 3850 50  0000 C CNN
F 1 "R" V 3734 3850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3780 3850 50  0001 C CNN
F 3 "~" H 3850 3850 50  0001 C CNN
	1    3850 3850
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5F495189
P 4100 4100
F 0 "R4" H 4030 4054 50  0000 R CNN
F 1 "R" H 4030 4145 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4030 4100 50  0001 C CNN
F 3 "~" H 4100 4100 50  0001 C CNN
	1    4100 4100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 5F49518F
P 4500 3400
F 0 "R5" H 4570 3446 50  0000 L CNN
F 1 "R" H 4570 3355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4430 3400 50  0001 C CNN
F 3 "~" H 4500 3400 50  0001 C CNN
	1    4500 3400
	1    0    0    -1  
$EndComp
Text Label 3700 3850 2    50   ~ 0
PWM1
$Comp
L power:GND #PWR0122
U 1 1 5F495196
P 4350 4350
F 0 "#PWR0122" H 4350 4100 50  0001 C CNN
F 1 "GND" H 4355 4177 50  0000 C CNN
F 2 "" H 4350 4350 50  0001 C CNN
F 3 "" H 4350 4350 50  0001 C CNN
	1    4350 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 4350 4100 4350
Wire Wire Line
	4100 4350 4100 4250
Wire Wire Line
	4350 4350 4500 4350
Wire Wire Line
	4500 4350 4500 4050
Connection ~ 4350 4350
Wire Wire Line
	4000 3850 4100 3850
Wire Wire Line
	4100 3950 4100 3850
Connection ~ 4100 3850
Wire Wire Line
	4100 3850 4200 3850
Wire Wire Line
	4500 3650 4500 3550
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 5F499FAC
P 5550 1400
F 0 "J2" H 5450 1650 50  0000 C CNN
F 1 "Conn_01x04_Male" V 5300 1450 50  0000 C CNN
F 2 "LED_Strip_Controller:SIP-4" H 5550 1400 50  0001 C CNN
F 3 "~" H 5550 1400 50  0001 C CNN
	1    5550 1400
	1    0    0    -1  
$EndComp
Text Label 4500 3250 2    50   ~ 0
LED_G
Text Label 5900 3250 2    50   ~ 0
LED_R
Text Label 7300 3250 2    50   ~ 0
LED_B
$Comp
L power:+12V #PWR0123
U 1 1 5F49DD5B
P 5850 1250
F 0 "#PWR0123" H 5850 1100 50  0001 C CNN
F 1 "+12V" H 5865 1423 50  0000 C CNN
F 2 "" H 5850 1250 50  0001 C CNN
F 3 "" H 5850 1250 50  0001 C CNN
	1    5850 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 1300 5850 1300
Wire Wire Line
	5850 1300 5850 1250
Text Label 5750 1400 0    50   ~ 0
LED_B
Text Label 5750 1500 0    50   ~ 0
LED_R
Text Label 5750 1600 0    50   ~ 0
LED_G
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 5F4A1B84
P 5550 2300
F 0 "J3" H 5450 2550 50  0000 C CNN
F 1 "Conn_01x04_Male" V 5300 2350 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 5550 2300 50  0001 C CNN
F 3 "~" H 5550 2300 50  0001 C CNN
	1    5550 2300
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0124
U 1 1 5F4A1B8A
P 5850 2150
F 0 "#PWR0124" H 5850 2000 50  0001 C CNN
F 1 "+12V" H 5865 2323 50  0000 C CNN
F 2 "" H 5850 2150 50  0001 C CNN
F 3 "" H 5850 2150 50  0001 C CNN
	1    5850 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 2200 5850 2200
Wire Wire Line
	5850 2200 5850 2150
Text Label 5750 2300 0    50   ~ 0
LED_B
Text Label 5750 2400 0    50   ~ 0
LED_R
Text Label 5750 2500 0    50   ~ 0
LED_G
$Comp
L LED_Strip_Controller:SW_Push_Dual SW1
U 1 1 5F4F7BFE
P 4300 6650
F 0 "SW1" H 4300 6935 50  0000 C CNN
F 1 "SW_Push_Dual" H 4300 6844 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H7.3mm" H 4300 6850 50  0001 C CNN
F 3 "~" H 4300 6850 50  0001 C CNN
	1    4300 6650
	1    0    0    -1  
$EndComp
$Comp
L LED_Strip_Controller:SW_Push_Dual SW2
U 1 1 5F4F8ECF
P 5900 6650
F 0 "SW2" H 5900 6935 50  0000 C CNN
F 1 "SW_Push_Dual" H 5900 6844 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H7.3mm" H 5900 6850 50  0001 C CNN
F 3 "~" H 5900 6850 50  0001 C CNN
	1    5900 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 6950 2550 6950
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5F4F460C
P 4850 3300
F 0 "H1" H 4950 3349 50  0000 L CNN
F 1 "MountingHole_Pad" H 4950 3258 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 4850 3300 50  0001 C CNN
F 3 "~" H 4850 3300 50  0001 C CNN
	1    4850 3300
	1    0    0    -1  
$EndComp
Text Label 4850 3400 0    50   ~ 0
thermal
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5F4F763D
P 6250 3300
F 0 "H2" H 6350 3349 50  0000 L CNN
F 1 "MountingHole_Pad" H 6350 3258 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 6250 3300 50  0001 C CNN
F 3 "~" H 6250 3300 50  0001 C CNN
	1    6250 3300
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5F4F799B
P 7650 3300
F 0 "H3" H 7750 3349 50  0000 L CNN
F 1 "MountingHole_Pad" H 7750 3258 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7650 3300 50  0001 C CNN
F 3 "~" H 7650 3300 50  0001 C CNN
	1    7650 3300
	1    0    0    -1  
$EndComp
Text Label 6250 3400 0    50   ~ 0
thermal
Text Label 7650 3400 0    50   ~ 0
thermal
$Comp
L Connector:Conn_01x20_Male J6
U 1 1 5F53E355
P 9200 5100
F 0 "J6" H 9308 6181 50  0000 C CNN
F 1 "Conn_01x20_Male" H 9308 6090 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x20_P2.54mm_Vertical" H 9200 5100 50  0001 C CNN
F 3 "~" H 9200 5100 50  0001 C CNN
	1    9200 5100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x20_Male J7
U 1 1 5F53FBF9
P 10350 5100
F 0 "J7" H 10458 6181 50  0000 C CNN
F 1 "Conn_01x20_Male" H 10458 6090 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x20_P2.54mm_Vertical" H 10350 5100 50  0001 C CNN
F 3 "~" H 10350 5100 50  0001 C CNN
	1    10350 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5F540C23
P 11100 4350
F 0 "#PWR04" H 11100 4100 50  0001 C CNN
F 1 "GND" H 11105 4177 50  0000 C CNN
F 2 "" H 11100 4350 50  0001 C CNN
F 3 "" H 11100 4350 50  0001 C CNN
	1    11100 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5F5413AD
P 9800 6200
F 0 "#PWR02" H 9800 5950 50  0001 C CNN
F 1 "GND" H 9805 6027 50  0000 C CNN
F 2 "" H 9800 6200 50  0001 C CNN
F 3 "" H 9800 6200 50  0001 C CNN
	1    9800 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	11100 4350 11100 4300
Wire Wire Line
	11100 4200 10550 4200
Wire Wire Line
	10550 4300 11100 4300
Connection ~ 11100 4300
Wire Wire Line
	11100 4300 11100 4200
$Comp
L power:+3.3V #PWR03
U 1 1 5F548777
P 10700 4400
F 0 "#PWR03" H 10700 4250 50  0001 C CNN
F 1 "+3.3V" H 10715 4573 50  0000 C CNN
F 2 "" H 10700 4400 50  0001 C CNN
F 3 "" H 10700 4400 50  0001 C CNN
	1    10700 4400
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR01
U 1 1 5F54BA87
P 9550 6100
F 0 "#PWR01" H 9550 5950 50  0001 C CNN
F 1 "+3.3V" H 9565 6273 50  0000 C CNN
F 2 "" H 9550 6100 50  0001 C CNN
F 3 "" H 9550 6100 50  0001 C CNN
	1    9550 6100
	0    1    1    0   
$EndComp
Wire Wire Line
	9550 6100 9400 6100
Wire Wire Line
	9800 6200 9800 5950
Wire Wire Line
	9800 5950 9550 5950
Wire Wire Line
	9550 5950 9550 6000
Wire Wire Line
	9550 6000 9400 6000
Wire Wire Line
	10700 4400 10550 4400
Text Label 10550 5700 0    50   ~ 0
ADC1
Text Label 9400 5500 0    50   ~ 0
PWM1
Text Label 9400 5600 0    50   ~ 0
PWM2
Text Label 9400 5700 0    50   ~ 0
PWM3
Text Label 9400 5300 0    50   ~ 0
LED1
Text Label 9400 5200 0    50   ~ 0
LED2
Text Label 9400 5100 0    50   ~ 0
BT2
Text Label 9400 5000 0    50   ~ 0
BT1
$EndSCHEMATC
