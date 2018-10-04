EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
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
L MCU_ST_STM32L0:STM32L011K4Tx U1
U 1 1 5BB5FB76
P 11650 5850
F 0 "U1" H 12100 4900 50  0000 C CNN
F 1 "STM32L011K4Tx" H 12350 4800 50  0000 C CNN
F 2 "Package_QFP:LQFP-32_7x7mm_P0.8mm" H 11250 4950 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00206508.pdf" H 11650 5850 50  0001 C CNN
	1    11650 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 5BB6188F
P 9500 7500
F 0 "Y1" V 9454 7631 50  0000 L CNN
F 1 "32.768K" V 9545 7631 50  0000 L CNN
F 2 "Crystal:Crystal_HC49-4H_Vertical" H 9500 7500 50  0001 C CNN
F 3 "~" H 9500 7500 50  0001 C CNN
	1    9500 7500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 5BB61973
P 9300 7850
F 0 "C12" V 9048 7850 50  0000 C CNN
F 1 "4.3p" V 9139 7850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9338 7700 50  0001 C CNN
F 3 "~" H 9300 7850 50  0001 C CNN
	1    9300 7850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 5BB619B8
P 9700 7850
F 0 "C13" V 9448 7850 50  0000 C CNN
F 1 "4.3p" V 9539 7850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9738 7700 50  0001 C CNN
F 3 "~" H 9700 7850 50  0001 C CNN
	1    9700 7850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 8000 9300 8050
Wire Wire Line
	9300 8050 9500 8050
Wire Wire Line
	9700 8050 9700 8000
$Comp
L power:GND #PWR0101
U 1 1 5BB61A77
P 9500 8150
F 0 "#PWR0101" H 9500 7900 50  0001 C CNN
F 1 "GND" H 9505 7977 50  0000 C CNN
F 2 "" H 9500 8150 50  0001 C CNN
F 3 "" H 9500 8150 50  0001 C CNN
	1    9500 8150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 8150 9500 8050
Connection ~ 9500 8050
Wire Wire Line
	9500 8050 9700 8050
Wire Wire Line
	9300 7700 9300 7500
Wire Wire Line
	9300 7500 9350 7500
Wire Wire Line
	9700 7700 9700 7500
Wire Wire Line
	9700 7500 9650 7500
Connection ~ 9700 7500
Connection ~ 9300 7500
$Comp
L Device:Jumper JP5
U 1 1 5BB61D49
P 9300 6600
F 0 "JP5" H 9300 6864 50  0000 C CNN
F 1 "Jumper" H 9300 6773 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 9300 6600 50  0001 C CNN
F 3 "~" H 9300 6600 50  0001 C CNN
	1    9300 6600
	0    -1   -1   0   
$EndComp
$Comp
L Device:Jumper JP7
U 1 1 5BB61E1A
P 9700 6600
F 0 "JP7" H 9700 6864 50  0000 C CNN
F 1 "Jumper" H 9700 6773 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 9700 6600 50  0001 C CNN
F 3 "~" H 9700 6600 50  0001 C CNN
	1    9700 6600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9300 7500 9300 6900
Wire Wire Line
	9700 7500 9700 6900
Wire Wire Line
	9300 6300 9300 6200
Wire Wire Line
	9300 6200 9450 6200
Wire Wire Line
	9550 6200 9700 6200
Wire Wire Line
	9700 6200 9700 6300
$Comp
L Connector_Generic:Conn_01x08 J2
U 1 1 5BB62B28
P 3450 7250
F 0 "J2" H 3370 7767 50  0000 C CNN
F 1 "Conn_01x08" H 3370 7676 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x08_P1.27mm_Vertical" H 3450 7250 50  0001 C CNN
F 3 "~" H 3450 7250 50  0001 C CNN
	1    3450 7250
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J3
U 1 1 5BB62B91
P 3450 8450
F 0 "J3" H 3370 8967 50  0000 C CNN
F 1 "Conn_01x08" H 3370 8876 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x08_P1.27mm_Vertical" H 3450 8450 50  0001 C CNN
F 3 "~" H 3450 8450 50  0001 C CNN
	1    3450 8450
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J6
U 1 1 5BB62CC3
P 7400 7250
F 0 "J6" H 7480 7242 50  0000 L CNN
F 1 "Conn_01x08" H 7480 7151 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x08_P1.27mm_Vertical" H 7400 7250 50  0001 C CNN
F 3 "~" H 7400 7250 50  0001 C CNN
	1    7400 7250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J7
U 1 1 5BB62D2A
P 7400 8450
F 0 "J7" H 7480 8442 50  0000 L CNN
F 1 "Conn_01x08" H 7480 8351 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x08_P1.27mm_Vertical" H 7400 8450 50  0001 C CNN
F 3 "~" H 7400 8450 50  0001 C CNN
	1    7400 8450
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP6
U 1 1 5BB62F22
P 8900 6600
F 0 "JP6" H 8900 6864 50  0000 C CNN
F 1 "Jumper" H 8900 6773 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 8900 6600 50  0001 C CNN
F 3 "~" H 8900 6600 50  0001 C CNN
	1    8900 6600
	0    -1   -1   0   
$EndComp
$Comp
L Device:Jumper JP8
U 1 1 5BB62F58
P 10050 6600
F 0 "JP8" H 10050 6864 50  0000 C CNN
F 1 "Jumper" H 10050 6773 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 10050 6600 50  0001 C CNN
F 3 "~" H 10050 6600 50  0001 C CNN
	1    10050 6600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10050 6300 10050 6200
Wire Wire Line
	10050 6200 9700 6200
Connection ~ 9700 6200
Wire Wire Line
	8900 6300 8900 6200
Wire Wire Line
	8900 6200 9300 6200
Connection ~ 9300 6200
Wire Wire Line
	8900 7550 8900 6900
Text Label 8900 7550 1    50   ~ 0
PC14
Wire Wire Line
	10050 7550 10050 6900
Text Label 10050 7550 1    50   ~ 0
PC15
Text Label 13000 6450 2    50   ~ 0
SWDIO
Text Label 13000 6550 2    50   ~ 0
SWCLK
Text Label 5550 10200 1    50   ~ 0
SWDIO
Text Label 5350 10200 1    50   ~ 0
SWCLK
Wire Wire Line
	5350 10200 5350 9950
Wire Wire Line
	5550 9950 5550 10200
Text Label 13000 6650 2    50   ~ 0
VCP_RX
Text Label 13000 5350 2    50   ~ 0
VCP_TX
Text Label 13000 5550 2    50   ~ 0
PA4
Wire Wire Line
	12150 5550 13000 5550
Text Label 13000 5650 2    50   ~ 0
PA5
Wire Wire Line
	12150 5650 13000 5650
Text Label 13000 5750 2    50   ~ 0
PA6
Wire Wire Line
	12150 5750 13000 5750
Text Label 13000 5850 2    50   ~ 0
PA7
Wire Wire Line
	12150 5850 13000 5850
Text Label 13000 5950 2    50   ~ 0
PA8
Wire Wire Line
	12150 5950 13000 5950
Text Label 13000 6050 2    50   ~ 0
PA9
Wire Wire Line
	12150 6050 13000 6050
Text Label 13000 6150 2    50   ~ 0
PA10
Wire Wire Line
	12150 6150 13000 6150
Text Label 13000 6250 2    50   ~ 0
PA11
Wire Wire Line
	12150 6250 13000 6250
Text Label 13000 6350 2    50   ~ 0
PA12
Wire Wire Line
	12150 6350 13000 6350
Text Label 13400 6450 0    50   ~ 0
PA13
Text Label 13400 6550 0    50   ~ 0
PA14
Wire Wire Line
	12150 6450 13400 6450
Wire Wire Line
	12150 6550 13400 6550
Text Label 13400 6650 0    50   ~ 0
PA15
Wire Wire Line
	12150 6650 13400 6650
Text Label 13000 5450 2    50   ~ 0
PA3
Wire Wire Line
	12150 5450 13000 5450
Text Label 13000 5250 2    50   ~ 0
PA1
Wire Wire Line
	12150 5250 13000 5250
Text Label 13000 5150 2    50   ~ 0
PA0
Wire Wire Line
	12150 5150 13000 5150
Text Label 13400 5350 0    50   ~ 0
PA2
Wire Wire Line
	12150 5350 13400 5350
Text Label 10300 6050 0    50   ~ 0
PB1
Wire Wire Line
	11150 6050 10300 6050
Wire Wire Line
	11150 6150 10300 6150
Text Label 10300 6250 0    50   ~ 0
PB4
Wire Wire Line
	11150 6250 10300 6250
Text Label 10300 6350 0    50   ~ 0
PB5
Wire Wire Line
	11150 6350 10300 6350
Text Label 10300 6450 0    50   ~ 0
PB6
Wire Wire Line
	11150 6450 10300 6450
Text Label 10300 6550 0    50   ~ 0
PB7
Wire Wire Line
	11150 6550 10300 6550
Text Label 10300 5950 0    50   ~ 0
PB0
Wire Wire Line
	11150 5950 10300 5950
Text Label 10300 6150 0    50   ~ 0
PB3
$Comp
L Device:Jumper JP11
U 1 1 5BB6F4C6
P 11400 7350
F 0 "JP11" V 11446 7262 50  0000 R CNN
F 1 "Jumper" V 11355 7262 50  0000 R CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 11400 7350 50  0001 C CNN
F 3 "~" H 11400 7350 50  0001 C CNN
	1    11400 7350
	0    -1   -1   0   
$EndComp
$Comp
L Device:Jumper JP13
U 1 1 5BB6F581
P 11650 7350
F 0 "JP13" V 11696 7262 50  0000 R CNN
F 1 "Jumper" V 11605 7262 50  0000 R CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 11650 7350 50  0001 C CNN
F 3 "~" H 11650 7350 50  0001 C CNN
	1    11650 7350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	11400 7050 11400 6950
Wire Wire Line
	11400 6950 11550 6950
Wire Wire Line
	11550 6950 11550 6850
Wire Wire Line
	11650 6850 11650 7050
Wire Wire Line
	11400 7650 11400 7750
Wire Wire Line
	11400 7750 11500 7750
Wire Wire Line
	11650 7750 11650 7650
$Comp
L power:GND #PWR0102
U 1 1 5BB72048
P 11500 8200
F 0 "#PWR0102" H 11500 7950 50  0001 C CNN
F 1 "GND" H 11505 8027 50  0000 C CNN
F 2 "" H 11500 8200 50  0001 C CNN
F 3 "" H 11500 8200 50  0001 C CNN
	1    11500 8200
	1    0    0    -1  
$EndComp
Connection ~ 11500 7750
Wire Wire Line
	11500 7750 11650 7750
$Comp
L Device:L BEAD1
U 1 1 5BB742F4
P 12200 4700
F 0 "BEAD1" H 12253 4746 50  0000 L CNN
F 1 "L1" H 12253 4655 50  0000 L CNN
F 2 "" H 12200 4700 50  0001 C CNN
F 3 "~" H 12200 4700 50  0001 C CNN
	1    12200 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP10
U 1 1 5BB77474
P 12200 4200
F 0 "JP10" V 12154 4327 50  0000 L CNN
F 1 "Jumper" V 12245 4327 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 12200 4200 50  0001 C CNN
F 3 "~" H 12200 4200 50  0001 C CNN
	1    12200 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	11550 3850 11550 4800
Wire Wire Line
	11550 4800 11650 4800
Wire Wire Line
	11650 4800 11650 4950
Connection ~ 11550 4800
Wire Wire Line
	11550 4800 11550 4950
$Comp
L Switch:SW_SPST SW1
U 1 1 5BB7AABF
P 9800 4900
F 0 "SW1" H 9800 5135 50  0000 C CNN
F 1 "SW_SPST" H 9800 5044 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H4.3mm" H 9800 4900 50  0001 C CNN
F 3 "" H 9800 4900 50  0001 C CNN
	1    9800 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 5BB7AB6E
P 9800 5250
F 0 "C11" V 9548 5250 50  0000 C CNN
F 1 "100n" V 9639 5250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9838 5100 50  0001 C CNN
F 3 "~" H 9800 5250 50  0001 C CNN
	1    9800 5250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5BB7AC34
P 9250 5300
F 0 "#PWR0104" H 9250 5050 50  0001 C CNN
F 1 "GND" H 9255 5127 50  0000 C CNN
F 2 "" H 9250 5300 50  0001 C CNN
F 3 "" H 9250 5300 50  0001 C CNN
	1    9250 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 5250 9450 5250
Wire Wire Line
	9450 5250 9450 4900
Wire Wire Line
	9450 4900 9600 4900
Wire Wire Line
	9950 5250 10200 5250
Wire Wire Line
	10200 5250 10200 5150
Wire Wire Line
	10200 4900 10000 4900
Wire Wire Line
	11150 5150 10200 5150
Connection ~ 10200 5150
Wire Wire Line
	10200 5150 10200 4900
$Comp
L Device:Jumper JP4
U 1 1 5BB8084C
P 10650 7350
F 0 "JP4" V 10604 7262 50  0000 R CNN
F 1 "Jumper" V 10695 7262 50  0000 R CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 10650 7350 50  0001 C CNN
F 3 "~" H 10650 7350 50  0001 C CNN
	1    10650 7350
	0    -1   1    0   
$EndComp
Wire Wire Line
	10650 7050 10650 6650
Wire Wire Line
	10650 6650 11150 6650
$Comp
L Device:R R3
U 1 1 5BB83BF9
P 10650 7850
F 0 "R3" H 10720 7896 50  0000 L CNN
F 1 "R" H 10720 7805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10580 7850 50  0001 C CNN
F 3 "~" H 10650 7850 50  0001 C CNN
	1    10650 7850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 7700 10650 7650
Wire Wire Line
	12200 4850 12200 4900
Wire Wire Line
	12200 4900 11850 4900
Wire Wire Line
	11750 4900 11750 4950
Wire Wire Line
	12200 4550 12200 4500
Wire Wire Line
	12200 3900 12200 3850
Wire Wire Line
	11550 3850 11700 3850
Text Label 11850 4400 3    50   ~ 0
AVDD
Wire Wire Line
	11850 4400 11850 4900
Connection ~ 11850 4900
Wire Wire Line
	11850 4900 11750 4900
Text Notes 12250 5150 0    50   ~ 0
MCO neglected
Text Notes 11100 5650 2    50   ~ 0
MCO neglected
Text Label 10650 6750 0    50   ~ 0
BOOT0
Text Label 10750 5150 0    50   ~ 0
NRST
Wire Wire Line
	5450 10200 5450 9950
Text Label 5250 10200 1    50   ~ 0
VDD
Wire Wire Line
	5250 10200 5250 9950
$Comp
L Device:C C7
U 1 1 5BBA3CB9
P 12900 7850
F 0 "C7" H 13015 7896 50  0000 L CNN
F 1 "100n" H 13015 7805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 12938 7700 50  0001 C CNN
F 3 "~" H 12900 7850 50  0001 C CNN
	1    12900 7850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C23
U 1 1 5BBA405A
P 13350 7850
F 0 "C23" H 13465 7896 50  0000 L CNN
F 1 "100n" H 13465 7805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 13388 7700 50  0001 C CNN
F 3 "~" H 13350 7850 50  0001 C CNN
	1    13350 7850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5BBA42A0
P 13150 8200
F 0 "#PWR0106" H 13150 7950 50  0001 C CNN
F 1 "GND" H 13155 8027 50  0000 C CNN
F 2 "" H 13150 8200 50  0001 C CNN
F 3 "" H 13150 8200 50  0001 C CNN
	1    13150 8200
	1    0    0    -1  
$EndComp
Wire Wire Line
	12900 7700 12900 7650
Wire Wire Line
	12900 7650 13150 7650
Wire Wire Line
	13150 7650 13350 7650
Wire Wire Line
	13350 7650 13350 7700
Connection ~ 13150 7650
Wire Wire Line
	12900 8000 12900 8050
Wire Wire Line
	12900 8050 13150 8050
Wire Wire Line
	13350 8050 13350 8000
Wire Wire Line
	13150 8200 13150 8050
Connection ~ 13150 8050
Wire Wire Line
	13150 8050 13350 8050
Text Label 14500 7350 3    50   ~ 0
AVDD
$Comp
L Device:C C24
U 1 1 5BBB0D68
P 14500 7850
F 0 "C24" H 14615 7896 50  0000 L CNN
F 1 "100n" H 14615 7805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 14538 7700 50  0001 C CNN
F 3 "~" H 14500 7850 50  0001 C CNN
	1    14500 7850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5BBB0DC2
P 14500 8200
F 0 "#PWR0107" H 14500 7950 50  0001 C CNN
F 1 "GND" H 14505 8027 50  0000 C CNN
F 2 "" H 14500 8200 50  0001 C CNN
F 3 "" H 14500 8200 50  0001 C CNN
	1    14500 8200
	1    0    0    -1  
$EndComp
Wire Wire Line
	14500 8200 14500 8000
Wire Wire Line
	14500 7700 14500 7350
$Comp
L Regulator_Linear:AMS1117-1.8 U6
U 1 1 5BBB6A1A
P 5150 2150
F 0 "U6" H 5150 2392 50  0000 C CNN
F 1 "AMS1117-1.8" H 5150 2301 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 5150 2350 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 5250 1900 50  0001 C CNN
	1    5150 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5BBB9D29
P 5300 2950
F 0 "#PWR0108" H 5300 2700 50  0001 C CNN
F 1 "GND" H 5305 2777 50  0000 C CNN
F 2 "" H 5300 2950 50  0001 C CNN
F 3 "" H 5300 2950 50  0001 C CNN
	1    5300 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 2100 6800 2150
$Comp
L Device:CP C22
U 1 1 5BBBD000
P 4650 2450
F 0 "C22" H 4768 2496 50  0000 L CNN
F 1 "10u" H 4768 2405 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_3x5.4" H 4688 2300 50  0001 C CNN
F 3 "~" H 4650 2450 50  0001 C CNN
	1    4650 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C25
U 1 1 5BBBD07A
P 5600 2450
F 0 "C25" H 5718 2496 50  0000 L CNN
F 1 "10u" H 5718 2405 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_3x5.4" H 5638 2300 50  0001 C CNN
F 3 "~" H 5600 2450 50  0001 C CNN
	1    5600 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 2300 5600 2150
Connection ~ 5600 2150
Wire Wire Line
	5600 2150 5450 2150
Wire Wire Line
	4650 2150 4650 2300
Connection ~ 4650 2150
Wire Wire Line
	4650 2150 4850 2150
Wire Wire Line
	4650 2600 4650 2650
Wire Wire Line
	4650 2650 5150 2650
Wire Wire Line
	5600 2650 5600 2600
Wire Wire Line
	5150 2450 5150 2650
Connection ~ 5150 2650
Wire Wire Line
	5150 2650 5300 2650
Connection ~ 5300 2650
Wire Wire Line
	5300 2650 5600 2650
Text Notes 4600 850  0    50   ~ 0
replace the combination of Vin -> 5V -> 3.3V \ndirectly to Vin -> 3.3V
$Comp
L Device:R R22
U 1 1 5BBEAA5E
P 5300 4600
F 0 "R22" H 5370 4646 50  0000 L CNN
F 1 "510" H 5370 4555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5230 4600 50  0001 C CNN
F 3 "~" H 5300 4600 50  0001 C CNN
	1    5300 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5BBEAB1D
P 5300 5000
F 0 "D2" V 5338 4882 50  0000 R CNN
F 1 "RED" V 5247 4882 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5300 5000 50  0001 C CNN
F 3 "~" H 5300 5000 50  0001 C CNN
	1    5300 5000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5300 4750 5300 4850
Wire Wire Line
	5300 5150 5300 5250
Wire Wire Line
	5300 2650 5300 2950
$Comp
L power:GND #PWR0110
U 1 1 5BBFF587
P 5300 5250
F 0 "#PWR0110" H 5300 5000 50  0001 C CNN
F 1 "GND" H 5305 5077 50  0000 C CNN
F 2 "" H 5300 5250 50  0001 C CNN
F 3 "" H 5300 5250 50  0001 C CNN
	1    5300 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5BC18F6F
P 6150 4600
F 0 "R2" H 6220 4646 50  0000 L CNN
F 1 "510" H 6220 4555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6080 4600 50  0001 C CNN
F 3 "~" H 6150 4600 50  0001 C CNN
	1    6150 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 5BC18F75
P 6150 5000
F 0 "D3" V 6188 4882 50  0000 R CNN
F 1 "RED" V 6097 4882 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6150 5000 50  0001 C CNN
F 3 "~" H 6150 5000 50  0001 C CNN
	1    6150 5000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6150 4750 6150 4850
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 5BC26D28
P 6250 1900
F 0 "J5" V 6467 1846 50  0000 C CNN
F 1 "Conn_01x02" V 6376 1846 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6250 1900 50  0001 C CNN
F 3 "~" H 6250 1900 50  0001 C CNN
	1    6250 1900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6250 2100 6250 2150
Wire Wire Line
	6350 2100 6350 2150
Wire Wire Line
	6350 2150 6800 2150
Text Notes 4750 10750 0    100  ~ 0
IO BANK CONFIGURATION
Text Notes 4600 1100 0    50   ~ 0
add additional led for incidate the power status\nfor both 5V and 3.3V
Text Label 6350 7050 0    50   ~ 0
PB1
Wire Wire Line
	7200 7050 6350 7050
Text Label 6350 7250 0    50   ~ 0
PB4
Wire Wire Line
	7200 7250 6350 7250
Text Label 6350 7350 0    50   ~ 0
PB5
Wire Wire Line
	7200 7350 6350 7350
Text Label 6350 7450 0    50   ~ 0
PB6
Wire Wire Line
	7200 7450 6350 7450
Text Label 6350 7550 0    50   ~ 0
PB7
Wire Wire Line
	7200 7550 6350 7550
Text Label 6350 6950 0    50   ~ 0
PB0
Wire Wire Line
	7200 6950 6350 6950
Text Label 6350 7150 0    50   ~ 0
PB3
Text Label 4500 8850 2    50   ~ 0
VCP_RX
Text Label 4500 7150 2    50   ~ 0
VCP_TX
Text Label 4500 7350 2    50   ~ 0
PA4
Wire Wire Line
	3650 7350 4500 7350
Text Label 4500 7450 2    50   ~ 0
PA5
Wire Wire Line
	3650 7450 4500 7450
Text Label 4500 7550 2    50   ~ 0
PA6
Wire Wire Line
	3650 7550 4500 7550
Text Label 4500 7650 2    50   ~ 0
PA7
Wire Wire Line
	3650 7650 4500 7650
Text Label 4500 8150 2    50   ~ 0
PA8
Wire Wire Line
	3650 8150 4500 8150
Text Label 4500 8250 2    50   ~ 0
PA9
Wire Wire Line
	3650 8250 4500 8250
Text Label 4500 8350 2    50   ~ 0
PA10
Wire Wire Line
	3650 8350 4500 8350
Text Label 4500 8450 2    50   ~ 0
PA11
Wire Wire Line
	3650 8450 4500 8450
Text Label 4500 8550 2    50   ~ 0
PA12
Wire Wire Line
	3650 8550 4500 8550
Text Label 4700 8850 0    50   ~ 0
PA15
Wire Wire Line
	3650 8850 4700 8850
Text Label 4500 7250 2    50   ~ 0
PA3
Wire Wire Line
	3650 7250 4500 7250
Text Label 4500 7050 2    50   ~ 0
PA1
Wire Wire Line
	3650 7050 4500 7050
Text Label 4500 6950 2    50   ~ 0
PA0
Wire Wire Line
	3650 6950 4500 6950
Text Label 4700 7150 0    50   ~ 0
PA2
Wire Wire Line
	3650 7150 4700 7150
Text Label 6350 8750 0    50   ~ 0
PC14
Wire Wire Line
	7200 8750 6350 8750
Text Label 6350 8850 0    50   ~ 0
PC15
Wire Wire Line
	7200 8850 6350 8850
Text Label 6350 8250 0    50   ~ 0
VDD
Wire Wire Line
	7200 8250 6350 8250
Text Label 6350 8350 0    50   ~ 0
GND
Wire Wire Line
	7200 8350 6350 8350
Text Label 6550 2150 0    50   ~ 0
VDD
Text Label 6550 2300 0    50   ~ 0
GND
$Comp
L power:GND #PWR0111
U 1 1 5BC18F7E
P 6150 5250
F 0 "#PWR0111" H 6150 5000 50  0001 C CNN
F 1 "GND" H 6155 5077 50  0000 C CNN
F 2 "" H 6150 5250 50  0001 C CNN
F 3 "" H 6150 5250 50  0001 C CNN
	1    6150 5250
	1    0    0    -1  
$EndComp
Text Label 6350 8150 0    50   ~ 0
VIN
Wire Wire Line
	7200 8150 6350 8150
Text Notes 4600 1600 0    50   ~ 0
Assuming:\n\nVIN = +5V\nVDD = +1.8V\n\n
Wire Wire Line
	9450 6200 9450 5650
Wire Wire Line
	9450 5650 11150 5650
Wire Wire Line
	11150 5750 9550 5750
Wire Wire Line
	9550 5750 9550 6200
Wire Wire Line
	9450 5250 9250 5250
Wire Wire Line
	9250 5250 9250 5300
Connection ~ 9450 5250
Wire Wire Line
	7200 7150 6350 7150
$Comp
L Device:Jumper JP1
U 1 1 5BDB7FD9
P 4450 4050
F 0 "JP1" V 4404 4177 50  0000 L CNN
F 1 "Jumper" V 4495 4177 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 4450 4050 50  0001 C CNN
F 3 "~" H 4450 4050 50  0001 C CNN
	1    4450 4050
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5BDB814F
P 4450 4600
F 0 "R1" H 4520 4646 50  0000 L CNN
F 1 "510" H 4520 4555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4380 4600 50  0001 C CNN
F 3 "~" H 4450 4600 50  0001 C CNN
	1    4450 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5BDB82F2
P 4450 5000
F 0 "D1" V 4488 4883 50  0000 R CNN
F 1 "LED" V 4397 4883 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4450 5000 50  0001 C CNN
F 3 "~" H 4450 5000 50  0001 C CNN
	1    4450 5000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4450 4350 4450 4450
Wire Wire Line
	4450 4750 4450 4850
$Comp
L power:GND #PWR0112
U 1 1 5BDC8318
P 4450 5250
F 0 "#PWR0112" H 4450 5000 50  0001 C CNN
F 1 "GND" H 4455 5077 50  0000 C CNN
F 2 "" H 4450 5250 50  0001 C CNN
F 3 "" H 4450 5250 50  0001 C CNN
	1    4450 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 5250 4450 5150
Text Label 4450 3500 3    50   ~ 0
PB3
Wire Wire Line
	4450 3500 4450 3750
Wire Wire Line
	4100 2150 4650 2150
Wire Wire Line
	5600 2150 6250 2150
$Comp
L power:GND #PWR0113
U 1 1 5BDF9B70
P 6500 2500
F 0 "#PWR0113" H 6500 2250 50  0001 C CNN
F 1 "GND" H 6505 2327 50  0000 C CNN
F 2 "" H 6500 2500 50  0001 C CNN
F 3 "" H 6500 2500 50  0001 C CNN
	1    6500 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 2500 6500 2300
Wire Wire Line
	6500 2300 6550 2300
Wire Wire Line
	6150 5150 6150 5250
$Comp
L Device:Jumper JP2
U 1 1 5BE31F6E
P 5300 4050
F 0 "JP2" V 5254 4177 50  0000 L CNN
F 1 "Jumper" V 5345 4177 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 5300 4050 50  0001 C CNN
F 3 "~" H 5300 4050 50  0001 C CNN
	1    5300 4050
	0    1    1    0   
$EndComp
$Comp
L Device:Jumper JP3
U 1 1 5BE31FDC
P 6150 4050
F 0 "JP3" V 6104 4177 50  0000 L CNN
F 1 "Jumper" V 6195 4177 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 6150 4050 50  0001 C CNN
F 3 "~" H 6150 4050 50  0001 C CNN
	1    6150 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 4350 6150 4450
Wire Wire Line
	5300 4350 5300 4450
Text Label 5300 3500 3    50   ~ 0
VIN
Wire Wire Line
	5300 3500 5300 3750
Text Label 6150 3500 3    50   ~ 0
VDD
Wire Wire Line
	6150 3500 6150 3750
Text Notes 5000 5700 0    50   ~ 0
INCIDATORS BANK
Wire Wire Line
	11500 7750 11500 8200
$Comp
L power:GND #PWR0114
U 1 1 5BE7BF73
P 10650 8200
F 0 "#PWR0114" H 10650 7950 50  0001 C CNN
F 1 "GND" H 10655 8027 50  0000 C CNN
F 2 "" H 10650 8200 50  0001 C CNN
F 3 "" H 10650 8200 50  0001 C CNN
	1    10650 8200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 8000 10650 8200
Text Notes 5700 10350 0    50   ~ 0
SWO is not connected \nin the origional design
Text Label 5450 10200 1    50   ~ 0
GND
Text Label 5550 9150 3    50   ~ 0
NRST
Wire Wire Line
	5550 9450 5550 9150
Wire Wire Line
	5450 9150 5450 9450
Text Label 5250 9150 3    50   ~ 0
VDD
Wire Wire Line
	5250 9150 5250 9450
Text Label 5450 9150 3    50   ~ 0
GND
$Comp
L Connector_Generic:Conn_02x04_Row_Letter_First J4
U 1 1 5BF2C9AE
P 5350 9750
F 0 "J4" V 5446 9462 50  0000 R CNN
F 1 "Conn_02x04_Row_Letter_First" V 5355 9462 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 5350 9750 50  0001 C CNN
F 3 "~" H 5350 9750 50  0001 C CNN
	1    5350 9750
	0    -1   -1   0   
$EndComp
Text Notes 5700 10100 0    50   ~ 0
the pin assignment is try to fit \nwith the waveshare SWD stick
Text Notes 6900 4150 0    50   ~ 0
additional pcb jumper for \npower measurment in \norigional design
Wire Notes Line
	4200 4300 7950 4300
Wire Notes Line
	7950 4300 7950 3800
Wire Notes Line
	7950 3800 4200 3800
Wire Notes Line
	4200 3800 4200 4300
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 5C016680
P 3450 6100
F 0 "J1" H 3370 6417 50  0000 C CNN
F 1 "Conn_01x04" H 3370 6326 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x04_P1.27mm_Vertical" H 3450 6100 50  0001 C CNN
F 3 "~" H 3450 6100 50  0001 C CNN
	1    3450 6100
	-1   0    0    -1  
$EndComp
Text Label 3950 6000 2    50   ~ 0
VIN
Text Label 3950 6300 2    50   ~ 0
GND
Text Label 3950 6100 2    50   ~ 0
VDD
Text Notes 3400 6550 0    50   ~ 0
TERMINAL FOR \nCONNECTING TO BATTERY
$Comp
L power:+5V #PWR0115
U 1 1 5C0C6FF4
P 4150 5950
F 0 "#PWR0115" H 4150 5800 50  0001 C CNN
F 1 "+5V" H 4165 6123 50  0000 C CNN
F 2 "" H 4150 5950 50  0001 C CNN
F 3 "" H 4150 5950 50  0001 C CNN
	1    4150 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 5950 4150 6000
Wire Wire Line
	3650 6000 4150 6000
$Comp
L power:+3.3V #PWR0116
U 1 1 5C0D0488
P 4300 6050
F 0 "#PWR0116" H 4300 5900 50  0001 C CNN
F 1 "+3.3V" H 4315 6223 50  0000 C CNN
F 2 "" H 4300 6050 50  0001 C CNN
F 3 "" H 4300 6050 50  0001 C CNN
	1    4300 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 6050 4300 6100
Wire Wire Line
	3650 6100 4300 6100
$Comp
L power:GND #PWR0117
U 1 1 5C0D8F78
P 4300 6350
F 0 "#PWR0117" H 4300 6100 50  0001 C CNN
F 1 "GND" H 4305 6177 50  0000 C CNN
F 2 "" H 4300 6350 50  0001 C CNN
F 3 "" H 4300 6350 50  0001 C CNN
	1    4300 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 6350 4300 6300
Wire Wire Line
	3650 6300 4300 6300
NoConn ~ 3650 6200
NoConn ~ 3650 8650
NoConn ~ 3650 8750
NoConn ~ 7200 8450
NoConn ~ 7200 8550
NoConn ~ 7200 8650
NoConn ~ 7200 7650
Text Notes 5700 10550 0    50   ~ 0
SWIM is not connected \ndue to not necessary
Text Notes 5350 8900 3    50   ~ 0
SWIM
NoConn ~ 5350 9450
$Comp
L power:+5V #PWR0103
U 1 1 5C127CD4
P 4100 2100
F 0 "#PWR0103" H 4100 1950 50  0001 C CNN
F 1 "+5V" H 4115 2273 50  0000 C CNN
F 2 "" H 4100 2100 50  0001 C CNN
F 3 "" H 4100 2100 50  0001 C CNN
	1    4100 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2100 4100 2150
$Comp
L power:+3.3V #PWR0105
U 1 1 5C130810
P 6800 2100
F 0 "#PWR0105" H 6800 1950 50  0001 C CNN
F 1 "+3.3V" H 6815 2273 50  0000 C CNN
F 2 "" H 6800 2100 50  0001 C CNN
F 3 "" H 6800 2100 50  0001 C CNN
	1    6800 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0109
U 1 1 5C1309C4
P 11700 3750
F 0 "#PWR0109" H 11700 3600 50  0001 C CNN
F 1 "+3.3V" H 11715 3923 50  0000 C CNN
F 2 "" H 11700 3750 50  0001 C CNN
F 3 "" H 11700 3750 50  0001 C CNN
	1    11700 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	11700 3750 11700 3850
Connection ~ 11700 3850
Wire Wire Line
	11700 3850 12200 3850
$Comp
L power:+3.3V #PWR0118
U 1 1 5C13984D
P 13150 7400
F 0 "#PWR0118" H 13150 7250 50  0001 C CNN
F 1 "+3.3V" H 13165 7573 50  0000 C CNN
F 2 "" H 13150 7400 50  0001 C CNN
F 3 "" H 13150 7400 50  0001 C CNN
	1    13150 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	13150 7400 13150 7650
$EndSCHEMATC
