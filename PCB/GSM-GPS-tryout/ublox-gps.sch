EESchema Schematic File Version 4
LIBS:GSM-GPS-tryout-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
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
L ublox:NEO-6M U8
U 1 1 5BBAE20C
P 4550 4050
F 0 "U8" H 4550 5015 50  0000 C CNN
F 1 "NEO-6M" H 4550 4924 50  0000 C CNN
F 2 "" H 4550 4050 50  0001 C CNN
F 3 "" H 4550 4050 50  0001 C CNN
	1    4550 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R29
U 1 1 5BBAE2C3
P 2900 3550
F 0 "R29" V 2603 3550 50  0000 C CNN
F 1 "1k" V 2694 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2785 3550 50  0001 C CNN
F 3 "~" H 2900 3550 50  0001 C CNN
F 4 "0805" V 2785 3550 50  0000 C CNN "Field4"
	1    2900 3550
	0    1    1    0   
$EndComp
$Comp
L Device:LED D9
U 1 1 5BBAE379
P 2300 3550
F 0 "D9" H 2291 3766 50  0000 C CNN
F 1 "LED" H 2291 3675 50  0000 C CNN
F 2 "" H 2300 3550 50  0001 C CNN
F 3 "~" H 2300 3550 50  0001 C CNN
	1    2300 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0159
U 1 1 5BBAE3ED
P 1800 3550
F 0 "#PWR0159" H 1800 3300 50  0001 C CNN
F 1 "GND" V 1805 3422 50  0000 R CNN
F 2 "" H 1800 3550 50  0001 C CNN
F 3 "" H 1800 3550 50  0001 C CNN
	1    1800 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 3550 3800 3550
Wire Wire Line
	2450 3550 2750 3550
Wire Wire Line
	1800 3550 2150 3550
Text Label 3250 3550 0    50   ~ 0
PULSE
Text Label 3250 3950 0    50   ~ 0
VUSB
$Comp
L power:GND #PWR0160
U 1 1 5BBAE7D9
P 3050 3950
F 0 "#PWR0160" H 3050 3700 50  0001 C CNN
F 1 "GND" V 3055 3822 50  0000 R CNN
F 2 "" H 3050 3950 50  0001 C CNN
F 3 "" H 3050 3950 50  0001 C CNN
	1    3050 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 3950 3800 3950
$Comp
L Device:Antenna AE1
U 1 1 5BBAE900
P 2600 4200
F 0 "AE1" H 2600 4467 50  0000 C CNN
F 1 "Antenna" H 2600 4376 50  0000 C CNN
F 2 "" H 2600 4200 50  0001 C CNN
F 3 "~" H 2600 4200 50  0001 C CNN
	1    2600 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0161
U 1 1 5BBAE987
P 3500 4700
F 0 "#PWR0161" H 3500 4450 50  0001 C CNN
F 1 "GND" H 3505 4527 50  0000 C CNN
F 2 "" H 3500 4700 50  0001 C CNN
F 3 "" H 3500 4700 50  0001 C CNN
	1    3500 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4350 3500 4350
Wire Wire Line
	3500 4350 3500 4550
Wire Wire Line
	3800 4550 3500 4550
Connection ~ 3500 4550
Wire Wire Line
	3500 4550 3500 4700
Wire Wire Line
	2600 4400 2600 4450
Wire Wire Line
	2600 4450 2800 4450
$Comp
L Device:L L1
U 1 1 5BBAEB54
P 3050 4150
F 0 "L1" V 2950 4150 50  0000 C CNN
F 1 "22u" V 2850 4150 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3050 4150 50  0001 C CNN
F 3 "~" H 3050 4150 50  0001 C CNN
F 4 "0805" V 2750 4150 50  0000 C CNN "Field4"
	1    3050 4150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2900 4150 2800 4150
Wire Wire Line
	2800 4150 2800 4450
Connection ~ 2800 4450
Wire Wire Line
	2800 4450 3800 4450
$Comp
L Device:R R30
U 1 1 5BBAECA7
P 3450 4150
F 0 "R30" V 3243 4150 50  0000 C CNN
F 1 "22" V 3334 4150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3380 4150 50  0001 C CNN
F 3 "~" H 3450 4150 50  0001 C CNN
	1    3450 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 4150 3300 4150
Wire Wire Line
	3600 4150 3700 4150
$Comp
L power:GND #PWR0162
U 1 1 5BBAF491
P 5600 3250
F 0 "#PWR0162" H 5600 3000 50  0001 C CNN
F 1 "GND" H 5605 3077 50  0000 C CNN
F 2 "" H 5600 3250 50  0001 C CNN
F 3 "" H 5600 3250 50  0001 C CNN
	1    5600 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	5300 3350 5600 3350
Wire Wire Line
	5600 3350 5600 3250
$Comp
L customized_power:+3V3 #PWR0163
U 1 1 5BBAF6C8
P 5800 3250
F 0 "#PWR0163" H 5800 3100 50  0001 C CNN
F 1 "+3V3" H 5815 3423 50  0000 C CNN
F 2 "" H 5800 3250 50  0001 C CNN
F 3 "" H 5800 3250 50  0001 C CNN
	1    5800 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3250 5800 3450
Wire Wire Line
	5800 3450 5300 3450
Text Label 5800 3650 2    50   ~ 0
RX
Wire Wire Line
	5800 3650 5300 3650
Text Label 5800 3750 2    50   ~ 0
TX
Wire Wire Line
	5800 3750 5300 3750
Text Label 5800 3850 2    50   ~ 0
GSCL
Wire Wire Line
	5800 3850 5300 3850
Text Label 5800 3950 2    50   ~ 0
GSDA
Wire Wire Line
	5800 3950 5300 3950
$Comp
L customized_power:+3V3 #PWR0164
U 1 1 5BBB02CB
P 6400 2950
F 0 "#PWR0164" H 6400 2800 50  0001 C CNN
F 1 "+3V3" H 6415 3123 50  0000 C CNN
F 2 "" H 6400 2950 50  0001 C CNN
F 3 "" H 6400 2950 50  0001 C CNN
	1    6400 2950
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N5817 D11
U 1 1 5BBB0404
P 6400 3200
F 0 "D11" V 6446 3121 50  0000 R CNN
F 1 "1N5817" V 6355 3121 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 6400 3025 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 6400 3200 50  0001 C CNN
	1    6400 3200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R31
U 1 1 5BBB0554
P 6200 3550
F 0 "R31" V 5993 3550 50  0000 C CNN
F 1 "1k" V 6084 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6130 3550 50  0001 C CNN
F 3 "~" H 6200 3550 50  0001 C CNN
	1    6200 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	5300 3550 6000 3550
Wire Wire Line
	6400 3350 6400 3550
Wire Wire Line
	6400 3550 6350 3550
Wire Wire Line
	6400 2950 6400 3050
$Comp
L Device:Battery BT1
U 1 1 5BBB1062
P 6000 3850
F 0 "BT1" H 6108 3896 50  0000 L CNN
F 1 "MS621F" H 6108 3805 50  0000 L CNN
F 2 "Battery:BatteryHolder_Seiko_MS621F" V 6000 3910 50  0001 C CNN
F 3 "~" V 6000 3910 50  0001 C CNN
	1    6000 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 3550 6000 3650
Connection ~ 6000 3550
Wire Wire Line
	6000 3550 6050 3550
$Comp
L power:GND #PWR0165
U 1 1 5BBB142F
P 6000 4150
F 0 "#PWR0165" H 6000 3900 50  0001 C CNN
F 1 "GND" H 6005 3977 50  0000 C CNN
F 2 "" H 6000 4150 50  0001 C CNN
F 3 "" H 6000 4150 50  0001 C CNN
	1    6000 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 4050 6000 4150
$Comp
L power:GND #PWR0166
U 1 1 5BBB18A9
P 5450 4700
F 0 "#PWR0166" H 5450 4450 50  0001 C CNN
F 1 "GND" H 5455 4527 50  0000 C CNN
F 2 "" H 5450 4700 50  0001 C CNN
F 3 "" H 5450 4700 50  0001 C CNN
	1    5450 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 4550 5450 4550
Wire Wire Line
	5450 4550 5450 4700
$Comp
L Connector_Generic:Conn_01x04 J15
U 1 1 5BBB2704
P 7950 5550
F 0 "J15" H 7870 5125 50  0000 C CNN
F 1 "Conn_01x04" H 7870 5216 50  0000 C CNN
F 2 "" H 7950 5550 50  0001 C CNN
F 3 "~" H 7950 5550 50  0001 C CNN
	1    7950 5550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0167
U 1 1 5BBB2844
P 8400 5800
F 0 "#PWR0167" H 8400 5550 50  0001 C CNN
F 1 "GND" H 8405 5627 50  0000 C CNN
F 2 "" H 8400 5800 50  0001 C CNN
F 3 "" H 8400 5800 50  0001 C CNN
	1    8400 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 5650 8400 5650
Wire Wire Line
	8400 5650 8400 5800
Text Label 8650 5450 2    50   ~ 0
RX
Wire Wire Line
	8650 5450 8150 5450
Text Label 8650 5550 2    50   ~ 0
TX
Wire Wire Line
	8650 5550 8150 5550
Wire Wire Line
	8400 5250 8400 5350
Wire Wire Line
	8400 5350 8150 5350
$Comp
L ublox:24AA32A U9
U 1 1 5BBB7816
P 8400 2050
F 0 "U9" H 8425 2515 50  0000 C CNN
F 1 "24AA32A" H 8425 2424 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-8_Handsoldering" H 8400 2050 50  0001 C CNN
F 3 "" H 8400 2050 50  0001 C CNN
	1    8400 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0169
U 1 1 5BBB7928
P 7800 2450
F 0 "#PWR0169" H 7800 2200 50  0001 C CNN
F 1 "GND" H 7805 2277 50  0000 C CNN
F 2 "" H 7800 2450 50  0001 C CNN
F 3 "" H 7800 2450 50  0001 C CNN
	1    7800 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 2450 7800 2200
Wire Wire Line
	7800 1900 7950 1900
Wire Wire Line
	7950 2000 7800 2000
Connection ~ 7800 2000
Wire Wire Line
	7800 2000 7800 1900
Wire Wire Line
	7950 2100 7800 2100
Connection ~ 7800 2100
Wire Wire Line
	7800 2100 7800 2000
Wire Wire Line
	7950 2200 7800 2200
Connection ~ 7800 2200
Wire Wire Line
	7800 2200 7800 2100
$Comp
L power:GND #PWR0170
U 1 1 5BBB958B
P 9250 2050
F 0 "#PWR0170" H 9250 1800 50  0001 C CNN
F 1 "GND" H 9255 1877 50  0000 C CNN
F 2 "" H 9250 2050 50  0001 C CNN
F 3 "" H 9250 2050 50  0001 C CNN
	1    9250 2050
	1    0    0    -1  
$EndComp
Text Label 9150 2100 2    50   ~ 0
GSCL
Text Label 9150 2200 2    50   ~ 0
GSDA
Wire Wire Line
	9150 2200 8900 2200
Wire Wire Line
	8900 2100 9150 2100
$Comp
L customized_power:+3V3 #PWR0171
U 1 1 5BBBB15E
P 9250 1850
F 0 "#PWR0171" H 9250 1700 50  0001 C CNN
F 1 "+3V3" H 9265 2023 50  0000 C CNN
F 2 "" H 9250 1850 50  0001 C CNN
F 3 "" H 9250 1850 50  0001 C CNN
	1    9250 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 2000 9250 2000
Wire Wire Line
	9250 2000 9250 2050
Wire Wire Line
	9250 1900 9250 1850
Wire Wire Line
	8900 1900 9250 1900
$Comp
L Regulator_Linear:LD3985M33R_SOT23 U7
U 1 1 5BBBDDDC
P 2750 1750
F 0 "U7" H 2750 2182 50  0000 C CNN
F 1 "LD3985M33R_SOT23" H 2750 2091 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 2750 2075 50  0001 C CIN
F 3 "http://www.st.com/internet/com/TECHNICAL_RESOURCES/TECHNICAL_LITERATURE/DATASHEET/CD00003395.pdf" H 2750 1750 50  0001 C CNN
F 4 "SOT23-5L" H 2750 2000 50  0000 C CNN "Field4"
	1    2750 1750
	1    0    0    -1  
$EndComp
$Comp
L customized_power:VCC #PWR0172
U 1 1 5BBBDF82
P 2000 1400
F 0 "#PWR0172" H 2000 1250 50  0001 C CNN
F 1 "VCC" H 2017 1573 50  0000 C CNN
F 2 "" H 2000 1400 50  0001 C CNN
F 3 "" H 2000 1400 50  0001 C CNN
	1    2000 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C17
U 1 1 5BBBE031
P 2000 1850
F 0 "C17" H 2115 1941 50  0000 L CNN
F 1 "1u" H 2115 1850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2038 1700 50  0001 C CNN
F 3 "~" H 2000 1850 50  0001 C CNN
F 4 "0805" H 2115 1759 50  0000 L CNN "Sch-footprint"
	1    2000 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1400 2000 1650
$Comp
L power:GND #PWR0173
U 1 1 5BBBEC2A
P 2000 2350
F 0 "#PWR0173" H 2000 2100 50  0001 C CNN
F 1 "GND" H 2005 2177 50  0000 C CNN
F 2 "" H 2000 2350 50  0001 C CNN
F 3 "" H 2000 2350 50  0001 C CNN
	1    2000 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2000 2000 2350
Wire Wire Line
	2450 1650 2300 1650
Connection ~ 2000 1650
Wire Wire Line
	2000 1650 2000 1700
Wire Wire Line
	2450 1750 2300 1750
Wire Wire Line
	2300 1750 2300 1650
Connection ~ 2300 1650
Wire Wire Line
	2300 1650 2000 1650
$Comp
L power:GND #PWR0174
U 1 1 5BBC2EEE
P 2750 2350
F 0 "#PWR0174" H 2750 2100 50  0001 C CNN
F 1 "GND" H 2755 2177 50  0000 C CNN
F 2 "" H 2750 2350 50  0001 C CNN
F 3 "" H 2750 2350 50  0001 C CNN
	1    2750 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2350 2750 2050
$Comp
L Device:C C18
U 1 1 5BBC3EC2
P 3400 1850
F 0 "C18" H 3515 1941 50  0000 L CNN
F 1 "10u" H 3515 1850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3438 1700 50  0001 C CNN
F 3 "~" H 3400 1850 50  0001 C CNN
F 4 "0805" H 3515 1759 50  0000 L CNN "Sch-footprint"
	1    3400 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C19
U 1 1 5BBC3F04
P 3800 1850
F 0 "C19" H 3915 1941 50  0000 L CNN
F 1 "0.1u" H 3915 1850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3838 1700 50  0001 C CNN
F 3 "~" H 3800 1850 50  0001 C CNN
F 4 "0805" H 3915 1759 50  0000 L CNN "Sch-footprint"
	1    3800 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C20
U 1 1 5BBC3F40
P 4200 1850
F 0 "C20" H 4315 1941 50  0000 L CNN
F 1 "0.1u" H 4315 1850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4238 1700 50  0001 C CNN
F 3 "~" H 4200 1850 50  0001 C CNN
F 4 "0805" H 4315 1759 50  0000 L CNN "Sch-footprint"
	1    4200 1850
	1    0    0    -1  
$EndComp
$Comp
L customized_power:+3V3 #PWR0175
U 1 1 5BBC4080
P 4750 1450
F 0 "#PWR0175" H 4750 1300 50  0001 C CNN
F 1 "+3V3" H 4765 1623 50  0000 C CNN
F 2 "" H 4750 1450 50  0001 C CNN
F 3 "" H 4750 1450 50  0001 C CNN
	1    4750 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1650 3400 1650
Connection ~ 4200 1650
Wire Wire Line
	4200 1650 4200 1700
Wire Wire Line
	3400 1650 3400 1700
Connection ~ 3400 1650
Wire Wire Line
	3400 1650 3800 1650
Wire Wire Line
	3800 1650 3800 1700
Connection ~ 3800 1650
Wire Wire Line
	3800 1650 4200 1650
$Comp
L power:GND #PWR0176
U 1 1 5BBC8496
P 3700 2350
F 0 "#PWR0176" H 3700 2100 50  0001 C CNN
F 1 "GND" H 3705 2177 50  0000 C CNN
F 2 "" H 3700 2350 50  0001 C CNN
F 3 "" H 3700 2350 50  0001 C CNN
	1    3700 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 2000 3400 2150
Wire Wire Line
	3400 2150 3700 2150
Wire Wire Line
	4200 2150 4200 2000
Wire Wire Line
	3800 2000 3800 2150
Connection ~ 3800 2150
Wire Wire Line
	3800 2150 4200 2150
Wire Wire Line
	3700 2150 3700 2350
Connection ~ 3700 2150
Wire Wire Line
	3700 2150 3800 2150
$Comp
L Device:LED D10
U 1 1 5BBCC777
P 4750 1900
F 0 "D10" V 4788 1783 50  0000 R CNN
F 1 "LED" V 4697 1783 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4750 1900 50  0001 C CNN
F 3 "~" H 4750 1900 50  0001 C CNN
	1    4750 1900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0177
U 1 1 5BBCC803
P 4750 2350
F 0 "#PWR0177" H 4750 2100 50  0001 C CNN
F 1 "GND" H 4755 2177 50  0000 C CNN
F 2 "" H 4750 2350 50  0001 C CNN
F 3 "" H 4750 2350 50  0001 C CNN
	1    4750 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2350 4750 2050
Wire Wire Line
	4200 1650 4750 1650
Wire Wire Line
	4750 1650 4750 1750
Wire Wire Line
	4750 1450 4750 1650
Connection ~ 4750 1650
NoConn ~ 3800 3650
NoConn ~ 3800 3350
NoConn ~ 3800 3450
NoConn ~ 5300 4150
NoConn ~ 5300 4450
NoConn ~ 5300 4350
NoConn ~ 5300 4250
Wire Wire Line
	3700 4150 3700 4250
Wire Wire Line
	3700 4250 3800 4250
Connection ~ 3700 4150
Wire Wire Line
	3700 4150 3800 4150
NoConn ~ 3050 1750
NoConn ~ 3800 3850
NoConn ~ 3800 3750
$Comp
L customized_power:VCC #PWR0121
U 1 1 5C0F17A2
P 8400 5250
F 0 "#PWR0121" H 8400 5100 50  0001 C CNN
F 1 "VCC" H 8417 5423 50  0000 C CNN
F 2 "" H 8400 5250 50  0001 C CNN
F 3 "" H 8400 5250 50  0001 C CNN
	1    8400 5250
	1    0    0    -1  
$EndComp
$EndSCHEMATC
