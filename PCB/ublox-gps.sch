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
P 4350 4900
F 0 "U8" H 4350 5865 50  0000 C CNN
F 1 "NEO-6M" H 4350 5774 50  0000 C CNN
F 2 "RF_Module:ublox_NEO" H 4350 4900 50  0001 C CNN
F 3 "" H 4350 4900 50  0001 C CNN
	1    4350 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0159
U 1 1 5BBAE3ED
P 1600 4400
F 0 "#PWR0159" H 1600 4150 50  0001 C CNN
F 1 "GND" V 1605 4272 50  0000 R CNN
F 2 "" H 1600 4400 50  0001 C CNN
F 3 "" H 1600 4400 50  0001 C CNN
	1    1600 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	1600 4400 1950 4400
Text Label 3050 4400 0    50   ~ 0
PULSE
Text Label 3050 4800 0    50   ~ 0
VUSB
$Comp
L power:GND #PWR0160
U 1 1 5BBAE7D9
P 2850 4800
F 0 "#PWR0160" H 2850 4550 50  0001 C CNN
F 1 "GND" V 2855 4672 50  0000 R CNN
F 2 "" H 2850 4800 50  0001 C CNN
F 3 "" H 2850 4800 50  0001 C CNN
	1    2850 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 4800 3600 4800
$Comp
L power:GND #PWR0161
U 1 1 5BBAE987
P 3300 5550
F 0 "#PWR0161" H 3300 5300 50  0001 C CNN
F 1 "GND" H 3305 5377 50  0000 C CNN
F 2 "" H 3300 5550 50  0001 C CNN
F 3 "" H 3300 5550 50  0001 C CNN
	1    3300 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 5200 3300 5200
Wire Wire Line
	3300 5200 3300 5400
Wire Wire Line
	3600 5400 3300 5400
Connection ~ 3300 5400
Wire Wire Line
	3300 5400 3300 5550
Wire Wire Line
	2700 5000 2600 5000
Wire Wire Line
	2600 5000 2600 5300
Wire Wire Line
	2600 5300 3600 5300
$Comp
L power:GND #PWR0162
U 1 1 5BBAF491
P 5400 4100
F 0 "#PWR0162" H 5400 3850 50  0001 C CNN
F 1 "GND" H 5405 3927 50  0000 C CNN
F 2 "" H 5400 4100 50  0001 C CNN
F 3 "" H 5400 4100 50  0001 C CNN
	1    5400 4100
	-1   0    0    1   
$EndComp
Wire Wire Line
	5100 4200 5400 4200
Wire Wire Line
	5400 4200 5400 4100
$Comp
L customized_power:+3V3 #PWR0163
U 1 1 5BBAF6C8
P 5600 4100
F 0 "#PWR0163" H 5600 3950 50  0001 C CNN
F 1 "+3V3" H 5615 4273 50  0000 C CNN
F 2 "" H 5600 4100 50  0001 C CNN
F 3 "" H 5600 4100 50  0001 C CNN
	1    5600 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 4100 5600 4300
Wire Wire Line
	5600 4300 5100 4300
Text Label 5600 4500 2    50   ~ 0
RX
Wire Wire Line
	5600 4500 5100 4500
Text Label 5600 4600 2    50   ~ 0
TX
Wire Wire Line
	5600 4600 5100 4600
Text Label 5600 4700 2    50   ~ 0
GSCL
Wire Wire Line
	5600 4700 5100 4700
Text Label 5600 4800 2    50   ~ 0
GSDA
Wire Wire Line
	5600 4800 5100 4800
$Comp
L customized_power:+3V3 #PWR0164
U 1 1 5BBB02CB
P 6200 3800
F 0 "#PWR0164" H 6200 3650 50  0001 C CNN
F 1 "+3V3" H 6215 3973 50  0000 C CNN
F 2 "" H 6200 3800 50  0001 C CNN
F 3 "" H 6200 3800 50  0001 C CNN
	1    6200 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4400 5800 4400
Wire Wire Line
	6200 4200 6200 4400
$Comp
L Device:Battery BT1
U 1 1 5BBB1062
P 5800 4700
F 0 "BT1" H 5908 4746 50  0000 L CNN
F 1 "MS621F" H 5908 4655 50  0000 L CNN
F 2 "Battery:BatteryHolder_Seiko_MS621F" V 5800 4760 50  0001 C CNN
F 3 "~" V 5800 4760 50  0001 C CNN
	1    5800 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 4400 5800 4500
Connection ~ 5800 4400
$Comp
L power:GND #PWR0165
U 1 1 5BBB142F
P 5800 5000
F 0 "#PWR0165" H 5800 4750 50  0001 C CNN
F 1 "GND" H 5805 4827 50  0000 C CNN
F 2 "" H 5800 5000 50  0001 C CNN
F 3 "" H 5800 5000 50  0001 C CNN
	1    5800 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 4900 5800 5000
$Comp
L power:GND #PWR0166
U 1 1 5BBB18A9
P 5250 5550
F 0 "#PWR0166" H 5250 5300 50  0001 C CNN
F 1 "GND" H 5255 5377 50  0000 C CNN
F 2 "" H 5250 5550 50  0001 C CNN
F 3 "" H 5250 5550 50  0001 C CNN
	1    5250 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 5400 5250 5400
Wire Wire Line
	5250 5400 5250 5550
$Comp
L Connector_Generic:Conn_01x04 J15
U 1 1 5BBB2704
P 900 1900
F 0 "J15" H 820 1475 50  0000 C CNN
F 1 "Conn_01x04" H 820 1566 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 900 1900 50  0001 C CNN
F 3 "~" H 900 1900 50  0001 C CNN
	1    900  1900
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0167
U 1 1 5BBB2844
P 1350 2150
F 0 "#PWR0167" H 1350 1900 50  0001 C CNN
F 1 "GND" H 1355 1977 50  0000 C CNN
F 2 "" H 1350 2150 50  0001 C CNN
F 3 "" H 1350 2150 50  0001 C CNN
	1    1350 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 2000 1350 2000
Wire Wire Line
	1350 2000 1350 2150
Text Label 1600 1800 2    50   ~ 0
RX
Wire Wire Line
	1600 1800 1100 1800
Text Label 1600 1900 2    50   ~ 0
TX
Wire Wire Line
	1600 1900 1100 1900
Wire Wire Line
	1350 1600 1350 1700
Wire Wire Line
	1350 1700 1100 1700
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
	2450 1650 2300 1650
Connection ~ 2000 1650
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
Connection ~ 3400 1650
Wire Wire Line
	3400 1650 3800 1650
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
	3400 2150 3700 2150
Connection ~ 3800 2150
Wire Wire Line
	3800 2150 4200 2150
Wire Wire Line
	3700 2150 3700 2350
Connection ~ 3700 2150
Wire Wire Line
	3700 2150 3800 2150
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
	4200 1650 4750 1650
Wire Wire Line
	4750 1650 4750 1750
Wire Wire Line
	4750 1450 4750 1650
Connection ~ 4750 1650
NoConn ~ 3600 4500
NoConn ~ 3600 4200
NoConn ~ 3600 4300
NoConn ~ 5100 5000
NoConn ~ 5100 5300
NoConn ~ 5100 5200
NoConn ~ 5100 5100
Wire Wire Line
	3500 5000 3500 5100
Wire Wire Line
	3500 5100 3600 5100
Connection ~ 3500 5000
Wire Wire Line
	3500 5000 3600 5000
NoConn ~ 3050 1750
NoConn ~ 3600 4700
NoConn ~ 3600 4600
$Comp
L power:GND #PWR0178
U 1 1 5BC1AD1A
P 1400 5550
F 0 "#PWR0178" H 1400 5300 50  0001 C CNN
F 1 "GND" H 1405 5377 50  0000 C CNN
F 2 "" H 1400 5550 50  0001 C CNN
F 3 "" H 1400 5550 50  0001 C CNN
	1    1400 5550
	1    0    0    -1  
$EndComp
Connection ~ 2600 5300
$Comp
L taobao-r:R102 R?
U 1 1 5BC45900
P 6000 4400
F 0 "R?" V 5750 4400 50  0000 C CNN
F 1 "R102" V 5850 4400 50  0000 C CNN
F 2 "" V 5930 4400 50  0001 C CNN
F 3 "~" H 6000 4400 50  0001 C CNN
	1    6000 4400
	0    1    1    0   
$EndComp
$Comp
L taobao-r:R220 R?
U 1 1 5BC45B9E
P 3250 5000
F 0 "R?" V 3054 5000 50  0000 C CNN
F 1 "R220" V 3145 5000 50  0000 C CNN
F 2 "" V 3180 5000 50  0001 C CNN
F 3 "~" H 3250 5000 50  0001 C CNN
	1    3250 5000
	0    1    1    0   
$EndComp
$Comp
L taobao-r:R102 R?
U 1 1 5BC46037
P 2700 4400
F 0 "R?" V 2450 4400 50  0000 C CNN
F 1 "R102" V 2550 4400 50  0000 C CNN
F 2 "" V 2630 4400 50  0001 C CNN
F 3 "~" H 2700 4400 50  0001 C CNN
	1    2700 4400
	0    1    1    0   
$EndComp
$Comp
L taobao-c:C105 C?
U 1 1 5BC4709A
P 2000 1850
F 0 "C?" H 2150 1900 50  0000 L CNN
F 1 "C105" H 2150 1850 50  0000 L CNN
F 2 "" H 2038 1700 50  0001 C CNN
F 3 "~" H 2000 1850 50  0001 C CNN
	1    2000 1850
	1    0    0    -1  
$EndComp
$Comp
L taobao-c:C106 C?
U 1 1 5BC47AA7
P 3400 1850
F 0 "C?" H 3550 1900 50  0000 L CNN
F 1 "C106" H 3550 1850 50  0000 L CNN
F 2 "" H 3438 1700 50  0001 C CNN
F 3 "~" H 3400 1850 50  0001 C CNN
	1    3400 1850
	1    0    0    -1  
$EndComp
$Comp
L taobao-c:C104 C?
U 1 1 5BC47C20
P 3800 1850
AR Path="/5BC47C20" Ref="C?"  Part="1" 
AR Path="/5BC0E426/5BC47C20" Ref="C?"  Part="1" 
F 0 "C?" H 3950 1900 50  0000 L CNN
F 1 "C104" H 3950 1850 50  0000 L CNN
F 2 "" H 3838 1700 50  0001 C CNN
F 3 "~" H 3800 1850 50  0001 C CNN
	1    3800 1850
	1    0    0    -1  
$EndComp
$Comp
L taobao-c:C104 C?
U 1 1 5BC47D54
P 4200 1850
AR Path="/5BC47D54" Ref="C?"  Part="1" 
AR Path="/5BC0E426/5BC47D54" Ref="C?"  Part="1" 
F 0 "C?" H 4350 1900 50  0000 L CNN
F 1 "C104" H 4350 1850 50  0000 L CNN
F 2 "" H 4238 1700 50  0001 C CNN
F 3 "~" H 4200 1850 50  0001 C CNN
	1    4200 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1650 2000 1750
Wire Wire Line
	2000 1950 2000 2350
Wire Wire Line
	3400 1650 3400 1750
Wire Wire Line
	3400 1950 3400 2150
Wire Wire Line
	3800 1650 3800 1750
Wire Wire Line
	3800 1950 3800 2150
Wire Wire Line
	4200 1650 4200 1750
Wire Wire Line
	4200 1950 4200 2150
Wire Wire Line
	2800 4400 3600 4400
Wire Wire Line
	3350 5000 3500 5000
Wire Wire Line
	5800 4400 5900 4400
Wire Wire Line
	6100 4400 6200 4400
$Comp
L Device:D_Zener_Small D?
U 1 1 5BD8793F
P 6200 4100
F 0 "D?" V 6250 4000 50  0000 R CNN
F 1 "1N5817" V 6200 4000 50  0000 R CNN
F 2 "" V 6200 4100 50  0001 C CNN
F 3 "~" V 6200 4100 50  0001 C CNN
	1    6200 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6200 3800 6200 4000
$Comp
L Device:L_Small L?
U 1 1 5BD89A25
P 2800 5000
F 0 "L?" V 3000 5000 50  0000 C CNN
F 1 "22u" V 2900 5000 50  0000 C CNN
F 2 "" H 2800 5000 50  0001 C CNN
F 3 "~" H 2800 5000 50  0001 C CNN
	1    2800 5000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2900 5000 3150 5000
Wire Wire Line
	2150 4400 2600 4400
$Comp
L taobao-r:R102 R?
U 1 1 5BCF2073
P 4750 2150
F 0 "R?" H 4809 2196 50  0000 L CNN
F 1 "R102" H 4809 2105 50  0000 L CNN
F 2 "" H 4750 2150 50  0001 C CNN
F 3 "~" H 4750 2150 50  0001 C CNN
	1    4750 2150
	1    0    0    -1  
$EndComp
$Comp
L taobao-components:LED_RED D?
U 1 1 5BCF2245
P 4750 1850
F 0 "D?" V 4796 1782 50  0000 R CNN
F 1 "LED_GREEN" V 4705 1782 50  0000 R CNN
F 2 "" V 4750 1850 50  0001 C CNN
F 3 "~" V 4750 1850 50  0001 C CNN
	1    4750 1850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4750 1950 4750 2050
Wire Wire Line
	4750 2250 4750 2350
$Comp
L taobao-components:LED_BLUE D?
U 1 1 5BCF650D
P 2050 4400
F 0 "D?" H 2050 4635 50  0000 C CNN
F 1 "LED_BLUE" H 2050 4544 50  0000 C CNN
F 2 "" V 2050 4400 50  0001 C CNN
F 3 "~" V 2050 4400 50  0001 C CNN
	1    2050 4400
	1    0    0    -1  
$EndComp
$Comp
L taobao-components:SMA U?
U 1 1 5BCF65CE
P 800 5350
F 0 "U?" H 694 5715 50  0000 C CNN
F 1 "SMA" H 694 5624 50  0000 C CNN
F 2 "w_conn_rf:sma_straight_32k101-400l5" H 750 5300 50  0001 C CNN
F 3 "" H 750 5300 50  0001 C CNN
	1    800  5350
	-1   0    0    -1  
$EndComp
Text Label 2250 5300 0    50   ~ 0
GPS_ANT
Wire Wire Line
	2250 5300 2600 5300
Text Label 1600 5300 2    50   ~ 0
GPS_ANT
Wire Wire Line
	1200 5300 1600 5300
Wire Wire Line
	1200 5450 1400 5450
Wire Wire Line
	1400 5450 1400 5550
Text Label 1300 5450 0    50   ~ 0
GPS_GND
Text Label 3350 5200 0    50   ~ 0
GPS_GND
$Comp
L taobao-components:VIN_GPS #PWR0158
U 1 1 5BD0DFE8
P 2000 1400
F 0 "#PWR0158" H 2000 1250 50  0001 C CNN
F 1 "VIN_GPS" H 2005 1523 50  0000 C CNN
F 2 "" H 2000 1400 50  0001 C CNN
F 3 "" H 2000 1400 50  0001 C CNN
	1    2000 1400
	1    0    0    -1  
$EndComp
$Comp
L taobao-components:VIN_GPS #PWR0168
U 1 1 5BD0E0E8
P 1350 1600
F 0 "#PWR0168" H 1350 1450 50  0001 C CNN
F 1 "VIN_GPS" H 1355 1723 50  0000 C CNN
F 2 "" H 1350 1600 50  0001 C CNN
F 3 "" H 1350 1600 50  0001 C CNN
	1    1350 1600
	1    0    0    -1  
$EndComp
$EndSCHEMATC
