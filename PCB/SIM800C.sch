EESchema Schematic File Version 4
LIBS:GSM-GPS-tryout-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 3 4
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
L taobao-components:SIM800C U3
U 1 1 5BB865BD
P 9950 4800
F 0 "U3" H 9850 4950 50  0000 L CNN
F 1 "SIM800C" H 9750 4850 50  0000 L CNN
F 2 "SIMCOM_modules:SIM800C" H 9950 4800 50  0001 C CNN
F 3 "" H 9950 4800 50  0001 C CNN
	1    9950 4800
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Micro J11
U 1 1 5BB7BDB0
P 1300 2350
F 0 "J11" H 1355 2817 50  0000 C CNN
F 1 "USB_B_Micro" H 1355 2726 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Molex_47346-0001" H 1450 2300 50  0001 C CNN
F 3 "~" H 1450 2300 50  0001 C CNN
	1    1300 2350
	1    0    0    -1  
$EndComp
Text Notes 1150 1400 0    100  ~ 0
USB source\nand charging circuit
$Comp
L power:GND #PWR0119
U 1 1 5BB7C5BC
P 1300 3100
F 0 "#PWR0119" H 1300 2850 50  0001 C CNN
F 1 "GND" H 1305 2927 50  0000 C CNN
F 2 "" H 1300 3100 50  0001 C CNN
F 3 "" H 1300 3100 50  0001 C CNN
	1    1300 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 2750 1200 2900
Wire Wire Line
	1200 2900 1300 2900
Wire Wire Line
	1300 2900 1300 3100
Wire Wire Line
	1300 2750 1300 2900
Connection ~ 1300 2900
$Comp
L power:+5V #PWR0120
U 1 1 5BB7C65C
P 1750 1800
F 0 "#PWR0120" H 1750 1650 50  0001 C CNN
F 1 "+5V" H 1765 1973 50  0000 C CNN
F 2 "" H 1750 1800 50  0001 C CNN
F 3 "" H 1750 1800 50  0001 C CNN
	1    1750 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 1800 1750 2150
Wire Wire Line
	1750 2150 1600 2150
$Comp
L Device:C C13
U 1 1 5BB7C6FB
P 1900 2600
F 0 "C13" H 2015 2646 50  0000 L CNN
F 1 "10u" H 2015 2555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1938 2450 50  0001 C CNN
F 3 "~" H 1900 2600 50  0001 C CNN
	1    1900 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 5BB7C73F
P 1900 3100
F 0 "#PWR0122" H 1900 2850 50  0001 C CNN
F 1 "GND" H 1905 2927 50  0000 C CNN
F 2 "" H 1900 3100 50  0001 C CNN
F 3 "" H 1900 3100 50  0001 C CNN
	1    1900 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 5BB7C754
P 4250 3100
F 0 "#PWR0123" H 4250 2850 50  0001 C CNN
F 1 "GND" H 4255 2927 50  0000 C CNN
F 2 "" H 4250 3100 50  0001 C CNN
F 3 "" H 4250 3100 50  0001 C CNN
	1    4250 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 2750 1900 3100
Wire Wire Line
	1750 2150 1900 2150
Wire Wire Line
	1900 2150 1900 2450
Connection ~ 1750 2150
$Comp
L Battery_Management:MCP73831-2-OT U4
U 1 1 5BB7C8A6
P 4250 2200
F 0 "U4" H 4250 2678 50  0000 C CNN
F 1 "MCP73831-2-OT" H 4250 2587 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 4300 1950 50  0001 L CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001984g.pdf" H 4100 2150 50  0001 C CNN
	1    4250 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0124
U 1 1 5BB7CA4C
P 4250 1100
F 0 "#PWR0124" H 4250 950 50  0001 C CNN
F 1 "+5V" H 4265 1273 50  0000 C CNN
F 2 "" H 4250 1100 50  0001 C CNN
F 3 "" H 4250 1100 50  0001 C CNN
	1    4250 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1100 4250 1200
Wire Wire Line
	4250 2500 4250 3100
$Comp
L Device:R R7
U 1 1 5BB7CC77
P 3400 2700
F 0 "R7" H 3470 2746 50  0000 L CNN
F 1 "2k" H 3470 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3330 2700 50  0001 C CNN
F 3 "~" H 3400 2700 50  0001 C CNN
	1    3400 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 2550 3400 2300
Wire Wire Line
	3400 2300 3850 2300
$Comp
L power:GND #PWR0125
U 1 1 5BB7CE11
P 3400 3100
F 0 "#PWR0125" H 3400 2850 50  0001 C CNN
F 1 "GND" H 3405 2927 50  0000 C CNN
F 2 "" H 3400 3100 50  0001 C CNN
F 3 "" H 3400 3100 50  0001 C CNN
	1    3400 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 2850 3400 3100
$Comp
L Device:R R5
U 1 1 5BB7D29D
P 4900 1750
F 0 "R5" H 4970 1796 50  0000 L CNN
F 1 "470" H 4970 1705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4830 1750 50  0001 C CNN
F 3 "~" H 4900 1750 50  0001 C CNN
	1    4900 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 1250 4900 1200
Wire Wire Line
	4900 1200 4250 1200
Connection ~ 4250 1200
Wire Wire Line
	4250 1200 4250 1900
$Comp
L Device:LED D_CHRG1
U 1 1 5BB7D746
P 4900 1400
F 0 "D_CHRG1" V 4938 1282 50  0000 R CNN
F 1 "O" V 4847 1282 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4900 1400 50  0001 C CNN
F 3 "~" H 4900 1400 50  0001 C CNN
	1    4900 1400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 5BB7D90B
P 4900 2550
F 0 "R6" H 4970 2596 50  0000 L CNN
F 1 "1k" H 4970 2505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4830 2550 50  0001 C CNN
F 3 "~" H 4900 2550 50  0001 C CNN
	1    4900 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D_DONE1
U 1 1 5BB7D911
P 4900 2900
F 0 "D_DONE1" V 4938 2782 50  0000 R CNN
F 1 "G" V 4847 2782 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4900 2900 50  0001 C CNN
F 3 "~" H 4900 2900 50  0001 C CNN
	1    4900 2900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 5BB7DB65
P 4900 3100
F 0 "#PWR0126" H 4900 2850 50  0001 C CNN
F 1 "GND" H 4905 2927 50  0000 C CNN
F 2 "" H 4900 3100 50  0001 C CNN
F 3 "" H 4900 3100 50  0001 C CNN
	1    4900 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3050 4900 3100
Wire Wire Line
	4900 2700 4900 2750
Wire Wire Line
	4900 1900 4900 2300
Wire Wire Line
	4900 1550 4900 1600
Wire Wire Line
	4650 2300 4900 2300
Connection ~ 4900 2300
Wire Wire Line
	4900 2300 4900 2400
$Comp
L Connector_Generic:Conn_01x02 J9
U 1 1 5BB7E8FD
P 5600 2200
F 0 "J9" H 5680 2192 50  0000 L CNN
F 1 "Conn_01x02" H 5680 2101 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5600 2200 50  0001 C CNN
F 3 "~" H 5600 2200 50  0001 C CNN
	1    5600 2200
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 5BB7EB61
P 5350 2350
F 0 "#PWR0127" H 5350 2100 50  0001 C CNN
F 1 "GND" H 5355 2177 50  0000 C CNN
F 2 "" H 5350 2350 50  0001 C CNN
F 3 "" H 5350 2350 50  0001 C CNN
	1    5350 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2350 5350 2200
Wire Wire Line
	5350 2200 5400 2200
Wire Wire Line
	4650 2100 5300 2100
$Comp
L taobao-components:SMF05C U6
U 1 1 5BB80641
P 7600 10000
F 0 "U6" H 7778 9938 39  0000 L CNN
F 1 "SMF05C" H 7778 9863 39  0000 L CNN
F 2 "w_smd_trans:sot23-6l" H 7600 10000 39  0001 C CNN
F 3 "" H 7600 10000 39  0001 C CNN
	1    7600 10000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0128
U 1 1 5BB80895
P 7400 10550
F 0 "#PWR0128" H 7400 10300 50  0001 C CNN
F 1 "GND" H 7405 10377 50  0000 C CNN
F 2 "" H 7400 10550 50  0001 C CNN
F 3 "" H 7400 10550 50  0001 C CNN
	1    7400 10550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 10450 7400 10550
Text Label 6750 9700 0    50   ~ 0
SIMDATA
Text Label 6750 9500 0    50   ~ 0
SIMCLK
Text Label 6750 9400 0    50   ~ 0
SIMRST
Wire Wire Line
	7300 9700 7300 9750
Wire Wire Line
	6750 9500 7500 9500
Wire Wire Line
	7500 9500 7500 9750
Wire Wire Line
	6750 9700 7300 9700
Text Label 11500 9850 2    50   ~ 0
SIMDATA
Text Label 8100 9850 0    50   ~ 0
SIMCLK
Text Label 8100 9750 0    50   ~ 0
SIMRST
$Comp
L power:GND #PWR0129
U 1 1 5BB826E6
P 10950 10100
F 0 "#PWR0129" H 10950 9850 50  0001 C CNN
F 1 "GND" H 10955 9927 50  0000 C CNN
F 2 "" H 10950 10100 50  0001 C CNN
F 3 "" H 10950 10100 50  0001 C CNN
	1    10950 10100
	1    0    0    -1  
$EndComp
Text Notes 9150 9150 0    50   ~ 0
SIM CARD HOLDER\n
Text Notes 6850 1100 0    100  ~ 0
4.1. Power Supply
$Comp
L Device:CP C9
U 1 1 5BB87189
P 6500 1850
F 0 "C9" H 6618 1896 50  0000 L CNN
F 1 "100u" H 6618 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6538 1700 50  0001 C CNN
F 3 "~" H 6500 1850 50  0001 C CNN
	1    6500 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 5BB8734A
P 7350 1850
F 0 "C11" H 7465 1896 50  0000 L CNN
F 1 "33p" H 7465 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7388 1700 50  0001 C CNN
F 3 "~" H 7350 1850 50  0001 C CNN
	1    7350 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 5BB873F2
P 7650 1850
F 0 "C12" H 7765 1896 50  0000 L CNN
F 1 "10p" H 7765 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7688 1700 50  0001 C CNN
F 3 "~" H 7650 1850 50  0001 C CNN
	1    7650 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D4
U 1 1 5BB875FD
P 8000 1850
F 0 "D4" V 7954 1929 50  0000 L CNN
F 1 "MMSZ5231BT1G" V 8045 1929 50  0000 L CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8000 1850 50  0001 C CNN
F 3 "~" H 8000 1850 50  0001 C CNN
	1    8000 1850
	0    1    1    0   
$EndComp
$Comp
L customized_power:+BATT #PWR0130
U 1 1 5BB87A99
P 7500 1450
F 0 "#PWR0130" H 7500 1300 50  0001 C CNN
F 1 "+BATT" H 7515 1623 50  0000 C CNN
F 2 "" H 7500 1450 50  0001 C CNN
F 3 "" H 7500 1450 50  0001 C CNN
	1    7500 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0131
U 1 1 5BB87B5C
P 7500 2250
F 0 "#PWR0131" H 7500 2000 50  0001 C CNN
F 1 "GND" H 7505 2077 50  0000 C CNN
F 2 "" H 7500 2250 50  0001 C CNN
F 3 "" H 7500 2250 50  0001 C CNN
	1    7500 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 1650 8000 1700
Wire Wire Line
	7500 1450 7500 1650
Connection ~ 7500 1650
Wire Wire Line
	7500 1650 7650 1650
Wire Wire Line
	7350 1700 7350 1650
Connection ~ 7350 1650
Wire Wire Line
	7350 1650 7500 1650
Wire Wire Line
	7650 1700 7650 1650
Connection ~ 7650 1650
Wire Wire Line
	7650 1650 8000 1650
Wire Wire Line
	8000 2050 8000 2000
Wire Wire Line
	7350 2000 7350 2050
Connection ~ 7350 2050
Wire Wire Line
	7350 2050 7500 2050
Wire Wire Line
	7650 2000 7650 2050
Connection ~ 7650 2050
Wire Wire Line
	7650 2050 8000 2050
Wire Wire Line
	7500 2250 7500 2050
Connection ~ 7500 2050
Wire Wire Line
	7500 2050 7650 2050
$Comp
L Connector:Conn_Coaxial J8
U 1 1 5BB8DACA
P 10200 2000
F 0 "J8" H 10299 1976 50  0000 L CNN
F 1 "Conn_Coaxial" H 10299 1885 50  0000 L CNN
F 2 "Connector_Coaxial:U.FL_Hirose_U.FL-R-SMT-1_Vertical" H 10200 2000 50  0001 C CNN
F 3 " ~" H 10200 2000 50  0001 C CNN
	1    10200 2000
	1    0    0    -1  
$EndComp
Text Label 9500 2000 0    50   ~ 0
GSM_ANT
Wire Wire Line
	9500 2000 10000 2000
$Comp
L power:GND #PWR0132
U 1 1 5BB8ED5A
P 10200 2350
F 0 "#PWR0132" H 10200 2100 50  0001 C CNN
F 1 "GND" H 10205 2177 50  0000 C CNN
F 2 "" H 10200 2350 50  0001 C CNN
F 3 "" H 10200 2350 50  0001 C CNN
	1    10200 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 2350 10200 2200
Text Notes 1500 8400 0    50   ~ 0
STATUS LED\n
$Comp
L power:GND #PWR0133
U 1 1 5BB93B10
P 1650 10450
F 0 "#PWR0133" H 1650 10200 50  0001 C CNN
F 1 "GND" H 1655 10277 50  0000 C CNN
F 2 "" H 1650 10450 50  0001 C CNN
F 3 "" H 1650 10450 50  0001 C CNN
	1    1650 10450
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D7
U 1 1 5BB93BA7
P 1500 9900
F 0 "D7" V 1538 9783 50  0000 R CNN
F 1 "BLUE" V 1447 9783 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1500 9900 50  0001 C CNN
F 3 "~" H 1500 9900 50  0001 C CNN
	1    1500 9900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R23
U 1 1 5BB93CA4
P 1500 9400
F 0 "R23" H 1570 9446 50  0000 L CNN
F 1 "1k" H 1570 9355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1430 9400 50  0001 C CNN
F 3 "~" H 1500 9400 50  0001 C CNN
	1    1500 9400
	1    0    0    -1  
$EndComp
Text Label 1500 8750 3    50   ~ 0
NETLIGHT
Wire Wire Line
	1500 8750 1500 9250
Wire Wire Line
	1500 9550 1500 9750
Wire Wire Line
	1500 10050 1500 10250
Wire Wire Line
	1500 10250 1650 10250
Wire Wire Line
	1650 10250 1650 10450
$Comp
L Device:LED D8
U 1 1 5BB9B7CE
P 1800 9900
F 0 "D8" V 1838 9782 50  0000 R CNN
F 1 "GREEN" V 1747 9782 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1800 9900 50  0001 C CNN
F 3 "~" H 1800 9900 50  0001 C CNN
	1    1800 9900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R24
U 1 1 5BB9B7D4
P 1800 9400
F 0 "R24" H 1870 9446 50  0000 L CNN
F 1 "1k" H 1870 9355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1730 9400 50  0001 C CNN
F 3 "~" H 1800 9400 50  0001 C CNN
	1    1800 9400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 8850 1800 9250
Wire Wire Line
	1800 9550 1800 9750
Wire Wire Line
	1800 10050 1800 10250
Wire Wire Line
	1650 10250 1800 10250
Connection ~ 1650 10250
$Comp
L customized_power:+BATT #PWR0134
U 1 1 5BB9F33C
P 5300 1950
F 0 "#PWR0134" H 5300 1800 50  0001 C CNN
F 1 "+BATT" H 5315 2123 50  0000 C CNN
F 2 "" H 5300 1950 50  0001 C CNN
F 3 "" H 5300 1950 50  0001 C CNN
	1    5300 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 1950 5300 2100
Connection ~ 5300 2100
Wire Wire Line
	5300 2100 5400 2100
$Comp
L Connector_Generic:Conn_01x02 J10
U 1 1 5BBA5ECD
P 2550 2250
F 0 "J10" H 2630 2242 50  0000 L CNN
F 1 "Conn_01x02" H 2630 2151 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2550 2250 50  0001 C CNN
F 3 "~" H 2550 2250 50  0001 C CNN
	1    2550 2250
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0135
U 1 1 5BBA7A0C
P 2300 2400
F 0 "#PWR0135" H 2300 2150 50  0001 C CNN
F 1 "GND" H 2305 2227 50  0000 C CNN
F 2 "" H 2300 2400 50  0001 C CNN
F 3 "" H 2300 2400 50  0001 C CNN
	1    2300 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 2400 2300 2250
Wire Wire Line
	2300 2250 2350 2250
Connection ~ 1900 2150
Wire Wire Line
	1900 2150 2350 2150
$Comp
L Connector_Generic:Conn_01x08 J14
U 1 1 5BBB6AC4
P 15000 8750
F 0 "J14" H 15079 8742 50  0000 L CNN
F 1 "SIM_COM_MODULE" H 15079 8651 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 15000 8750 50  0001 C CNN
F 3 "~" H 15000 8750 50  0001 C CNN
	1    15000 8750
	1    0    0    -1  
$EndComp
Text Label 8700 5900 0    50   ~ 0
UART1_TXD_3V3
Text Label 8700 6000 0    50   ~ 0
UART1_RXD_3V3
$Comp
L power:GND #PWR0136
U 1 1 5BBBA829
P 10050 6300
F 0 "#PWR0136" H 10050 6050 50  0001 C CNN
F 1 "GND" H 10055 6127 50  0000 C CNN
F 2 "" H 10050 6300 50  0001 C CNN
F 3 "" H 10050 6300 50  0001 C CNN
	1    10050 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 6300 10050 5800
$Comp
L power:GND #PWR0137
U 1 1 5BBC4D8C
P 11150 5250
F 0 "#PWR0137" H 11150 5000 50  0001 C CNN
F 1 "GND" H 11155 5077 50  0000 C CNN
F 2 "" H 11150 5250 50  0001 C CNN
F 3 "" H 11150 5250 50  0001 C CNN
	1    11150 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10950 5100 11150 5100
Wire Wire Line
	11150 5100 11150 5250
$Comp
L power:GND #PWR0138
U 1 1 5BBC7239
P 11150 4050
F 0 "#PWR0138" H 11150 3800 50  0001 C CNN
F 1 "GND" H 11155 3877 50  0000 C CNN
F 2 "" H 11150 4050 50  0001 C CNN
F 3 "" H 11150 4050 50  0001 C CNN
	1    11150 4050
	1    0    0    1   
$EndComp
Wire Wire Line
	11150 4050 11150 4300
Wire Wire Line
	11150 4300 10950 4300
Text Label 11750 4900 2    50   ~ 0
SIMDATA
Wire Wire Line
	11750 4900 10950 4900
Text Label 11750 4800 2    50   ~ 0
SIMCLK
Wire Wire Line
	11750 4800 10950 4800
Text Label 11750 4700 2    50   ~ 0
SIMRST
Wire Wire Line
	11750 4700 10950 4700
$Comp
L power:GND #PWR0139
U 1 1 5BBDB103
P 11300 4200
F 0 "#PWR0139" H 11300 3950 50  0001 C CNN
F 1 "GND" H 11305 4027 50  0000 C CNN
F 2 "" H 11300 4200 50  0001 C CNN
F 3 "" H 11300 4200 50  0001 C CNN
	1    11300 4200
	-1   0    0    1   
$EndComp
Wire Wire Line
	11300 4200 11300 4500
Text Label 9500 3000 3    50   ~ 0
GSM_ANT
Wire Wire Line
	9500 3800 9500 3000
$Comp
L power:GND #PWR0140
U 1 1 5BBED87E
P 9800 2850
F 0 "#PWR0140" H 9800 2600 50  0001 C CNN
F 1 "GND" H 9805 2677 50  0000 C CNN
F 2 "" H 9800 2850 50  0001 C CNN
F 3 "" H 9800 2850 50  0001 C CNN
	1    9800 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	10000 3800 10000 2950
Wire Wire Line
	10000 2950 9900 2950
Wire Wire Line
	9800 2950 9800 2850
$Comp
L Device:CP C14
U 1 1 5BBF049D
P 9900 3400
F 0 "C14" H 9782 3354 50  0000 R CNN
F 1 "10u" H 9782 3445 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9938 3250 50  0001 C CNN
F 3 "~" H 9900 3400 50  0001 C CNN
	1    9900 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	9900 3550 9900 3800
Wire Wire Line
	9900 3250 9900 2950
Connection ~ 9900 2950
Wire Wire Line
	9900 2950 9800 2950
Wire Wire Line
	9700 2950 9800 2950
Connection ~ 9800 2950
$Comp
L power:GND #PWR0141
U 1 1 5BC08BF2
P 9250 3150
F 0 "#PWR0141" H 9250 2900 50  0001 C CNN
F 1 "GND" H 9255 2977 50  0000 C CNN
F 2 "" H 9250 3150 50  0001 C CNN
F 3 "" H 9250 3150 50  0001 C CNN
	1    9250 3150
	-1   0    0    1   
$EndComp
Wire Wire Line
	9250 3150 9250 3500
Wire Wire Line
	9250 3650 9400 3650
Wire Wire Line
	9400 3650 9400 3800
Wire Wire Line
	8800 4400 8950 4400
Wire Wire Line
	8950 4300 8800 4300
Connection ~ 8800 4300
Wire Wire Line
	8800 4300 8800 4400
$Comp
L power:GND #PWR0142
U 1 1 5BC1707A
P 8500 3750
F 0 "#PWR0142" H 8500 3500 50  0001 C CNN
F 1 "GND" H 8505 3577 50  0000 C CNN
F 2 "" H 8500 3750 50  0001 C CNN
F 3 "" H 8500 3750 50  0001 C CNN
	1    8500 3750
	-1   0    0    1   
$EndComp
Wire Wire Line
	8950 4600 8500 4600
$Comp
L power:GND #PWR0143
U 1 1 5BC2707D
P 6600 5800
F 0 "#PWR0143" H 6600 5550 50  0001 C CNN
F 1 "GND" H 6605 5627 50  0000 C CNN
F 2 "" H 6600 5800 50  0001 C CNN
F 3 "" H 6600 5800 50  0001 C CNN
	1    6600 5800
	1    0    0    -1  
$EndComp
Text Label 8450 5000 0    50   ~ 0
NETLIGHT
Wire Wire Line
	8450 5000 8950 5000
Text Label 8100 9950 0    50   ~ 0
SIMDET
Wire Wire Line
	10950 9650 10950 9950
Wire Wire Line
	10500 9650 10950 9650
Wire Wire Line
	10500 9950 10950 9950
Connection ~ 10950 9950
Wire Wire Line
	10950 9950 10950 10100
Text Label 6750 9600 0    50   ~ 0
SIMDET
Wire Wire Line
	6750 9600 7400 9600
Wire Wire Line
	7400 9600 7400 9750
Wire Wire Line
	6750 9400 7600 9400
Wire Wire Line
	7600 9400 7600 9750
Wire Wire Line
	7700 9300 7700 9750
$Comp
L Device:C C16
U 1 1 5BCA8378
P 6400 10150
F 0 "C16" H 6515 10196 50  0000 L CNN
F 1 "0.1u" H 6515 10105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6438 10000 50  0001 C CNN
F 3 "~" H 6400 10150 50  0001 C CNN
	1    6400 10150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0144
U 1 1 5BCACDB6
P 6400 10400
F 0 "#PWR0144" H 6400 10150 50  0001 C CNN
F 1 "GND" H 6405 10227 50  0000 C CNN
F 2 "" H 6400 10400 50  0001 C CNN
F 3 "" H 6400 10400 50  0001 C CNN
	1    6400 10400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 10400 6400 10300
Wire Wire Line
	11300 4500 10950 4500
$Comp
L customized_power:+1V8 #PWR0145
U 1 1 5BCD3ECA
P 11500 4500
F 0 "#PWR0145" H 11500 4350 50  0001 C CNN
F 1 "+1V8" H 11515 4673 50  0000 C CNN
F 2 "" H 11500 4500 50  0001 C CNN
F 3 "" H 11500 4500 50  0001 C CNN
	1    11500 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10950 4600 11500 4600
Wire Wire Line
	11500 4600 11500 4500
$Comp
L customized_power:+1V8 #PWR0146
U 1 1 5BCD90D2
P 7700 9300
F 0 "#PWR0146" H 7700 9150 50  0001 C CNN
F 1 "+1V8" H 7715 9473 50  0000 C CNN
F 2 "" H 7700 9300 50  0001 C CNN
F 3 "" H 7700 9300 50  0001 C CNN
	1    7700 9300
	1    0    0    -1  
$EndComp
$Comp
L customized_power:+1V8 #PWR0147
U 1 1 5BCD92E3
P 6400 9450
F 0 "#PWR0147" H 6400 9300 50  0001 C CNN
F 1 "+1V8" H 6415 9623 50  0000 C CNN
F 2 "" H 6400 9450 50  0001 C CNN
F 3 "" H 6400 9450 50  0001 C CNN
	1    6400 9450
	1    0    0    -1  
$EndComp
$Comp
L SIM_SLOT:SIM_CARD U5
U 1 1 5BC4A7C9
P 9850 10050
F 0 "U5" H 9850 10715 50  0000 C CNN
F 1 "Molex 91228 SIM card holder" H 9850 10624 50  0000 C CNN
F 2 "footprint-lib.pretty:sim-socket-91228-3001" H 9850 9900 50  0001 C CNN
F 3 "" H 9850 9900 50  0001 C CNN
	1    9850 10050
	1    0    0    -1  
$EndComp
$Comp
L customized_power:+2V8 #PWR0148
U 1 1 5BD68470
P 7700 4700
F 0 "#PWR0148" H 7700 4550 50  0001 C CNN
F 1 "+2V8" H 7715 4873 50  0000 C CNN
F 2 "" H 7700 4700 50  0001 C CNN
F 3 "" H 7700 4700 50  0001 C CNN
	1    7700 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 4800 8950 4800
Wire Wire Line
	7700 4700 7700 4900
Wire Wire Line
	7700 4900 8950 4900
Wire Wire Line
	8700 5900 9350 5900
Wire Wire Line
	9350 5900 9350 5800
Wire Wire Line
	8700 6000 9450 6000
Wire Wire Line
	9450 6000 9450 5800
$Comp
L customized_power:+2V8 #PWR0149
U 1 1 5BDB727B
P 7250 6050
F 0 "#PWR0149" H 7250 5900 50  0001 C CNN
F 1 "+2V8" H 7265 6223 50  0000 C CNN
F 2 "" H 7250 6050 50  0001 C CNN
F 3 "" H 7250 6050 50  0001 C CNN
	1    7250 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5BDB7771
P 7600 6250
F 0 "R12" V 7393 6250 50  0000 C CNN
F 1 "10k" V 7484 6250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7530 6250 50  0001 C CNN
F 3 "~" H 7600 6250 50  0001 C CNN
	1    7600 6250
	0    1    1    0   
$EndComp
Wire Wire Line
	7250 6050 7250 6250
Wire Wire Line
	7250 6250 7450 6250
$Comp
L Device:Jumper JP12
U 1 1 5BDC6B7A
P 8200 6250
F 0 "JP12" H 8200 6514 50  0000 C CNN
F 1 "Jumper" H 8200 6423 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 8200 6250 50  0001 C CNN
F 3 "~" H 8200 6250 50  0001 C CNN
	1    8200 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 6250 7900 6250
Wire Wire Line
	9550 6250 9550 5800
Text Label 8700 6650 0    50   ~ 0
UART1_RI_3V3
Wire Wire Line
	8700 6650 9950 6650
Wire Wire Line
	9950 6650 9950 5800
Text Label 10150 6200 1    50   ~ 0
MIC1P
Wire Wire Line
	10150 6200 10150 5800
Text Label 10250 6200 1    50   ~ 0
MIC1N
Wire Wire Line
	10250 6200 10250 5800
Text Label 10350 6200 1    50   ~ 0
SPK1P
Wire Wire Line
	10350 6200 10350 5800
Text Label 10450 6200 1    50   ~ 0
SPK1N
Wire Wire Line
	10450 6200 10450 5800
Wire Wire Line
	8800 3750 8800 4300
$Comp
L customized_power:+BATT #PWR0150
U 1 1 5BDF314A
P 8800 3750
F 0 "#PWR0150" H 8800 3600 50  0001 C CNN
F 1 "+BATT" H 8815 3923 50  0000 C CNN
F 2 "" H 8800 3750 50  0001 C CNN
F 3 "" H 8800 3750 50  0001 C CNN
	1    8800 3750
	1    0    0    -1  
$EndComp
Text Label 11750 5000 2    50   ~ 0
SIMDET
Wire Wire Line
	11750 5000 10950 5000
$Comp
L Switch:SW_SPST SW2
U 1 1 5BDF9868
P 6600 5300
F 0 "SW2" V 6646 5212 50  0000 R CNN
F 1 "SW_SPST" V 6555 5212 50  0000 R CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H4.3mm" H 6600 5300 50  0001 C CNN
F 3 "" H 6600 5300 50  0001 C CNN
	1    6600 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	6600 5800 6600 5500
Text Label 8400 4700 0    50   ~ 0
SIM800C_ADC
Wire Wire Line
	8400 4700 8950 4700
Text Notes 10450 6550 0    50   ~ 0
from SIM800C_Hardware_Design_V1.00
$Comp
L Device:C C10
U 1 1 5BE0CD6E
P 6950 1850
F 0 "C10" H 7065 1896 50  0000 L CNN
F 1 "10u" H 7065 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6988 1700 50  0001 C CNN
F 3 "~" H 6950 1850 50  0001 C CNN
	1    6950 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 1700 6950 1650
Connection ~ 6950 1650
Wire Wire Line
	6950 1650 7350 1650
Wire Wire Line
	6950 2000 6950 2050
Connection ~ 6950 2050
Wire Wire Line
	6950 2050 7350 2050
Wire Wire Line
	6500 1700 6500 1650
Wire Wire Line
	6500 2000 6500 2050
Wire Wire Line
	6500 2050 6950 2050
Wire Wire Line
	6500 1650 6950 1650
Wire Wire Line
	8500 3750 8500 4500
Connection ~ 8500 4500
Wire Wire Line
	8500 4500 8950 4500
Wire Wire Line
	8500 4500 8500 4600
Wire Notes Line
	8250 3400 8250 3950
Wire Notes Line
	8250 3950 9050 3950
Wire Notes Line
	9050 3950 9050 3400
Wire Notes Line
	9050 3400 8250 3400
Text Notes 8250 3350 0    50   ~ 0
POWER SUPPLY\nAND GOUND
Text Notes 800  4800 0    50   ~ 0
COMMENTS\n\ntry to align PIN1 the GROUND\n\n4.1.1. Power Supply Pin\nThe PCB traces from the VBAT pins to the power supply must be wide enough (at least 60mil) to decrease voltage drops\nThe power IC and the bypass capacitor should be placed to the module as close as possible.\n\n4.2.1. Power on SIM800C\nCustomer can power on SIM800C by pulling down the PWRKEY pin for at least 1 second and release.\n\nThe SIM card peripheral components should be placed close to the SIM\ncard holder.\n\nPin 36 and Pin37 are GND signals, and shortest layout to GND of power source should be designed;\n\nbetter to trace signal lines of UART bunched, as well as signals of USB.
Text Notes 8050 1450 0    50   ~ 0
VBAT input, a 100uF Tantalum capacitor (C A low ESR) and \na 1uF~10uF Ceramics capacitor C B are strongly recommended.
$Comp
L Device:Q_NPN_BCE Q1
U 1 1 5BE6C520
P 5750 5300
F 0 "Q1" H 5941 5346 50  0000 L CNN
F 1 "Q_NPN_BCE" H 5941 5255 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5950 5400 50  0001 C CNN
F 3 "~" H 5750 5300 50  0001 C CNN
	1    5750 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5BE7CB56
P 5050 5300
F 0 "R8" V 4843 5300 50  0000 C CNN
F 1 "4.7k" V 4934 5300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4980 5300 50  0001 C CNN
F 3 "~" H 5050 5300 50  0001 C CNN
	1    5050 5300
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 5BE7CD6C
P 5450 5700
F 0 "R11" V 5657 5700 50  0000 C CNN
F 1 "47k" V 5566 5700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5380 5700 50  0001 C CNN
F 3 "~" H 5450 5700 50  0001 C CNN
	1    5450 5700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0151
U 1 1 5BE7CE4C
P 5850 5800
F 0 "#PWR0151" H 5850 5550 50  0001 C CNN
F 1 "GND" H 5855 5627 50  0000 C CNN
F 2 "" H 5850 5800 50  0001 C CNN
F 3 "" H 5850 5800 50  0001 C CNN
	1    5850 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 5500 5850 5700
Wire Wire Line
	5600 5700 5850 5700
Connection ~ 5850 5700
Wire Wire Line
	5850 5700 5850 5800
Wire Wire Line
	5200 5300 5250 5300
Wire Wire Line
	5300 5700 5250 5700
Wire Wire Line
	5250 5700 5250 5300
Connection ~ 5250 5300
Wire Wire Line
	5250 5300 5550 5300
Wire Wire Line
	5850 5100 5850 4900
Wire Wire Line
	5850 4900 6600 4900
Wire Wire Line
	6600 4900 6600 5100
Text Label 8400 4800 0    50   ~ 0
PWRKEY
Text Label 7000 4900 2    50   ~ 0
PWRKEY
Wire Wire Line
	7000 4900 6600 4900
Connection ~ 6600 4900
Text Label 4000 5300 0    50   ~ 0
SIMCOM_PWRKEY
Wire Wire Line
	4000 5300 4900 5300
Wire Wire Line
	8500 6250 9550 6250
Text Label 8700 6250 0    50   ~ 0
UART1_RTS_3V3
Text Label 8700 6350 0    50   ~ 0
UART1_CTS_3V3
Text Label 8700 6450 0    50   ~ 0
UART1_DCD_3V3
Wire Wire Line
	9650 6350 9650 5800
Wire Wire Line
	8700 6350 9650 6350
Wire Wire Line
	9750 5800 9750 6450
Wire Wire Line
	8700 6450 9750 6450
Text Label 8700 6550 0    50   ~ 0
UART1_DTR_3V3
Wire Wire Line
	9850 6550 9850 5800
Wire Wire Line
	8700 6550 9850 6550
Text Label 13400 8550 0    50   ~ 0
UART1_TXD_3V3
Text Label 13400 8650 0    50   ~ 0
UART1_RXD_3V3
Text Label 13400 9150 0    50   ~ 0
UART1_RI_3V3
Text Label 13400 8750 0    50   ~ 0
UART1_RTS_3V3
Text Label 13400 8850 0    50   ~ 0
UART1_CTS_3V3
Text Label 13400 8950 0    50   ~ 0
UART1_DCD_3V3
Text Label 13400 9050 0    50   ~ 0
UART1_DTR_3V3
Wire Wire Line
	13400 9050 14800 9050
Wire Wire Line
	13400 9150 14800 9150
Wire Wire Line
	13400 8750 14800 8750
Wire Wire Line
	13400 8850 14800 8850
Wire Wire Line
	13400 8950 14800 8950
Wire Wire Line
	13400 8650 14800 8650
Wire Wire Line
	13400 8550 14800 8550
$Comp
L power:GND #PWR0152
U 1 1 5BF5D58E
P 14400 8200
F 0 "#PWR0152" H 14400 7950 50  0001 C CNN
F 1 "GND" H 14405 8027 50  0000 C CNN
F 2 "" H 14400 8200 50  0001 C CNN
F 3 "" H 14400 8200 50  0001 C CNN
	1    14400 8200
	-1   0    0    1   
$EndComp
Wire Wire Line
	14400 8200 14400 8450
Wire Wire Line
	14400 8450 14800 8450
Text Notes 14150 9600 0    50   ~ 0
IO PORT BANK
$Comp
L Connector_Generic:Conn_01x08 J13
U 1 1 5BF6CE46
P 15000 7000
F 0 "J13" H 14919 6375 50  0000 C CNN
F 1 "TO_DTE (+3V3)" H 14919 6466 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 15000 7000 50  0001 C CNN
F 3 "~" H 15000 7000 50  0001 C CNN
	1    15000 7000
	1    0    0    1   
$EndComp
Text Label 12600 7200 0    50   ~ 0
UART1_TXD_3V3
Text Label 12600 7100 0    50   ~ 0
UART1_RXD_3V3
Text Label 12600 6600 0    50   ~ 0
UART1_RI_3V3
Text Label 12600 7000 0    50   ~ 0
UART1_RTS_3V3
Text Label 12600 6900 0    50   ~ 0
UART1_CTS_3V3
Text Label 12600 6800 0    50   ~ 0
UART1_DCD_3V3
Text Label 12600 6700 0    50   ~ 0
UART1_DTR_3V3
$Comp
L power:GND #PWR0153
U 1 1 5BF6CE5A
P 14400 7750
F 0 "#PWR0153" H 14400 7500 50  0001 C CNN
F 1 "GND" H 14405 7577 50  0000 C CNN
F 2 "" H 14400 7750 50  0001 C CNN
F 3 "" H 14400 7750 50  0001 C CNN
	1    14400 7750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	14400 7750 14400 7600
Wire Wire Line
	14400 7300 14800 7300
$Comp
L Device:R R19
U 1 1 5BF7C734
P 14350 7200
F 0 "R19" V 14143 7200 50  0000 C CNN
F 1 "1k" V 14234 7200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 14280 7200 50  0001 C CNN
F 3 "~" H 14350 7200 50  0001 C CNN
	1    14350 7200
	0    1    -1   0   
$EndComp
$Comp
L Device:R R18
U 1 1 5BF7CA6B
P 14350 7100
F 0 "R18" V 14143 7100 50  0000 C CNN
F 1 "1k" V 14234 7100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 14280 7100 50  0001 C CNN
F 3 "~" H 14350 7100 50  0001 C CNN
	1    14350 7100
	0    1    -1   0   
$EndComp
$Comp
L Device:R R17
U 1 1 5BF7CAC5
P 14350 7000
F 0 "R17" V 14143 7000 50  0000 C CNN
F 1 "R" V 14234 7000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 14280 7000 50  0001 C CNN
F 3 "~" H 14350 7000 50  0001 C CNN
	1    14350 7000
	0    1    -1   0   
$EndComp
$Comp
L Device:R R16
U 1 1 5BF7CB1D
P 14350 6900
F 0 "R16" V 14143 6900 50  0000 C CNN
F 1 "1k" V 14234 6900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 14280 6900 50  0001 C CNN
F 3 "~" H 14350 6900 50  0001 C CNN
	1    14350 6900
	0    1    -1   0   
$EndComp
$Comp
L Device:R R15
U 1 1 5BF7CB7B
P 14350 6800
F 0 "R15" V 14143 6800 50  0000 C CNN
F 1 "1k" V 14234 6800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 14280 6800 50  0001 C CNN
F 3 "~" H 14350 6800 50  0001 C CNN
	1    14350 6800
	0    1    -1   0   
$EndComp
$Comp
L Device:R R14
U 1 1 5BF7CBDB
P 14350 6700
F 0 "R14" V 14143 6700 50  0000 C CNN
F 1 "1k" V 14234 6700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 14280 6700 50  0001 C CNN
F 3 "~" H 14350 6700 50  0001 C CNN
	1    14350 6700
	0    1    -1   0   
$EndComp
$Comp
L Device:R R13
U 1 1 5BF7CC39
P 14350 6600
F 0 "R13" V 14143 6600 50  0000 C CNN
F 1 "1k" V 14234 6600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 14280 6600 50  0001 C CNN
F 3 "~" H 14350 6600 50  0001 C CNN
	1    14350 6600
	0    1    -1   0   
$EndComp
Wire Wire Line
	14500 6600 14800 6600
Wire Wire Line
	14500 6700 14800 6700
Wire Wire Line
	14500 6800 14800 6800
Wire Wire Line
	14500 6900 14800 6900
Wire Wire Line
	14500 7000 14800 7000
Wire Wire Line
	14500 7100 14800 7100
Wire Wire Line
	14500 7200 14800 7200
$Comp
L Device:R R20
U 1 1 5C0569DF
P 13600 7400
F 0 "R20" H 13530 7354 50  0000 R CNN
F 1 "5.6k" H 13530 7445 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13530 7400 50  0001 C CNN
F 3 "~" H 13600 7400 50  0001 C CNN
	1    13600 7400
	1    0    0    1   
$EndComp
$Comp
L Device:R R21
U 1 1 5C056B3B
P 13800 7400
F 0 "R21" H 13730 7354 50  0000 R CNN
F 1 "5.6k" H 13730 7445 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13730 7400 50  0001 C CNN
F 3 "~" H 13800 7400 50  0001 C CNN
	1    13800 7400
	1    0    0    1   
$EndComp
$Comp
L Device:R R22
U 1 1 5C056BA3
P 14000 7400
F 0 "R22" H 14070 7354 50  0000 L CNN
F 1 "5.6k" H 14070 7445 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13930 7400 50  0001 C CNN
F 3 "~" H 14000 7400 50  0001 C CNN
	1    14000 7400
	1    0    0    1   
$EndComp
Wire Wire Line
	14400 7600 14000 7600
Wire Wire Line
	14000 7600 14000 7550
Connection ~ 14400 7600
Wire Wire Line
	14400 7600 14400 7300
Wire Wire Line
	14000 7600 13800 7600
Wire Wire Line
	13800 7600 13800 7550
Connection ~ 14000 7600
Wire Wire Line
	13800 7600 13600 7600
Wire Wire Line
	13600 7600 13600 7550
Connection ~ 13800 7600
Wire Wire Line
	12600 6600 14200 6600
Wire Wire Line
	12600 6700 13600 6700
Wire Wire Line
	12600 6800 14200 6800
Wire Wire Line
	12600 6900 14200 6900
Wire Wire Line
	12600 7000 13800 7000
Wire Wire Line
	12600 7100 14000 7100
Wire Wire Line
	12600 7200 14200 7200
Wire Wire Line
	13600 6700 13600 7250
Connection ~ 13600 6700
Wire Wire Line
	13600 6700 14200 6700
Wire Wire Line
	13800 7000 13800 7250
Connection ~ 13800 7000
Wire Wire Line
	13800 7000 14200 7000
Wire Wire Line
	14000 7100 14000 7250
Connection ~ 14000 7100
Wire Wire Line
	14000 7100 14200 7100
$Comp
L Connector_Generic:Conn_01x05 J12
U 1 1 5C0E8B34
P 15000 5450
F 0 "J12" H 14919 5025 50  0000 C CNN
F 1 "TO_DTE (+3V3)" H 14919 5116 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 15000 5450 50  0001 C CNN
F 3 "~" H 15000 5450 50  0001 C CNN
	1    15000 5450
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0154
U 1 1 5C0E904E
P 13950 6350
F 0 "#PWR0154" H 13950 6100 50  0001 C CNN
F 1 "GND" H 13955 6177 50  0000 C CNN
F 2 "" H 13950 6350 50  0001 C CNN
F 3 "" H 13950 6350 50  0001 C CNN
	1    13950 6350
	-1   0    0    -1  
$EndComp
Text Label 13450 5450 0    50   ~ 0
USB_DP
Text Label 13450 5350 0    50   ~ 0
USB_DN
Text Label 13450 5250 0    50   ~ 0
USB_VBUS
$Comp
L power:+5V #PWR0155
U 1 1 5C0FD71E
P 14250 4450
F 0 "#PWR0155" H 14250 4300 50  0001 C CNN
F 1 "+5V" H 14265 4623 50  0000 C CNN
F 2 "" H 14250 4450 50  0001 C CNN
F 3 "" H 14250 4450 50  0001 C CNN
	1    14250 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	14250 4450 14250 4750
Wire Wire Line
	14250 5250 14800 5250
$Comp
L Device:C C15
U 1 1 5C1072AD
P 14450 4750
F 0 "C15" V 14198 4750 50  0000 C CNN
F 1 "1u" V 14289 4750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 14488 4600 50  0001 C CNN
F 3 "~" H 14450 4750 50  0001 C CNN
	1    14450 4750
	0    1    1    0   
$EndComp
Wire Wire Line
	14300 4750 14250 4750
Connection ~ 14250 4750
Wire Wire Line
	14250 4750 14250 5250
$Comp
L power:GND #PWR0156
U 1 1 5C12DEE4
P 14800 4750
F 0 "#PWR0156" H 14800 4500 50  0001 C CNN
F 1 "GND" V 14805 4622 50  0000 R CNN
F 2 "" H 14800 4750 50  0001 C CNN
F 3 "" H 14800 4750 50  0001 C CNN
	1    14800 4750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	14800 4750 14600 4750
Text Label 13450 5550 0    50   ~ 0
USB_ID
Text Label 10100 3000 3    50   ~ 0
USB_DN
Text Label 10200 3000 3    50   ~ 0
USB_DP
Wire Wire Line
	10200 3000 10200 3800
Wire Wire Line
	10100 3000 10100 3800
Text Label 10300 3000 3    50   ~ 0
USB_VBUS
Wire Wire Line
	10300 3000 10300 3800
Wire Wire Line
	13450 5250 14250 5250
Connection ~ 14250 5250
Wire Wire Line
	13450 5550 14800 5550
Text Label 13500 6250 0    50   ~ 0
USB_GND
$Comp
L Device:R R9
U 1 1 5C1B7314
P 14050 5350
F 0 "R9" V 13843 5350 50  0000 C CNN
F 1 "R" V 13934 5350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13980 5350 50  0001 C CNN
F 3 "~" H 14050 5350 50  0001 C CNN
	1    14050 5350
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 5C1B75BF
P 14050 5450
F 0 "R10" V 13843 5450 50  0000 C CNN
F 1 "R" V 13934 5450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13980 5450 50  0001 C CNN
F 3 "~" H 14050 5450 50  0001 C CNN
	1    14050 5450
	0    1    1    0   
$EndComp
Wire Wire Line
	13450 5350 13900 5350
Wire Wire Line
	13450 5450 13900 5450
Wire Wire Line
	14200 5350 14600 5350
Wire Wire Line
	14200 5450 14250 5450
Wire Wire Line
	13950 6250 13950 6350
Wire Wire Line
	14700 5650 14800 5650
Connection ~ 13950 6250
Wire Wire Line
	14700 5650 14700 6250
$Comp
L Device:D_Zener D5
U 1 1 5C2243E0
P 14250 5850
F 0 "D5" V 14204 5929 50  0000 L CNN
F 1 "D_Zener" V 14295 5929 50  0000 L CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 14250 5850 50  0001 C CNN
F 3 "~" H 14250 5850 50  0001 C CNN
	1    14250 5850
	0    1    1    0   
$EndComp
$Comp
L Device:D_Zener D6
U 1 1 5C224769
P 14600 5850
F 0 "D6" V 14554 5929 50  0000 L CNN
F 1 "D_Zener" V 14645 5929 50  0000 L CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 14600 5850 50  0001 C CNN
F 3 "~" H 14600 5850 50  0001 C CNN
	1    14600 5850
	0    1    1    0   
$EndComp
Wire Wire Line
	14250 6000 14250 6250
Wire Wire Line
	13950 6250 14250 6250
Connection ~ 14250 6250
Wire Wire Line
	14600 6000 14600 6250
Connection ~ 14600 6250
Wire Wire Line
	14600 6250 14700 6250
Wire Wire Line
	14250 5700 14250 5450
Connection ~ 14250 5450
Wire Wire Line
	14250 5450 14800 5450
Wire Wire Line
	14600 5700 14600 5350
Connection ~ 14600 5350
Wire Wire Line
	14600 5350 14800 5350
Wire Wire Line
	13500 6250 13950 6250
Wire Wire Line
	14250 6250 14600 6250
Wire Wire Line
	6400 9450 6400 10000
$Comp
L customized_power:+1V8 #PWR0157
U 1 1 5C2A646C
P 8850 9300
F 0 "#PWR0157" H 8850 9150 50  0001 C CNN
F 1 "+1V8" H 8865 9473 50  0000 C CNN
F 2 "" H 8850 9300 50  0001 C CNN
F 3 "" H 8850 9300 50  0001 C CNN
	1    8850 9300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 9300 8850 9650
Wire Wire Line
	8850 9650 9200 9650
$Comp
L Device:R R26
U 1 1 5C2D5EA5
P 9000 9750
F 0 "R26" V 8793 9750 50  0000 C CNN
F 1 "51" V 8884 9750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8930 9750 50  0001 C CNN
F 3 "~" H 9000 9750 50  0001 C CNN
	1    9000 9750
	0    1    1    0   
$EndComp
Wire Wire Line
	9150 9750 9200 9750
$Comp
L Device:R R27
U 1 1 5C2E1E2F
P 9000 9850
F 0 "R27" V 8793 9850 50  0000 C CNN
F 1 "51" V 8884 9850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8930 9850 50  0001 C CNN
F 3 "~" H 9000 9850 50  0001 C CNN
	1    9000 9850
	0    1    1    0   
$EndComp
Wire Wire Line
	9150 9850 9200 9850
$Comp
L Device:R R28
U 1 1 5C312AC1
P 10750 9850
F 0 "R28" V 10543 9850 50  0000 C CNN
F 1 "51" V 10634 9850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10680 9850 50  0001 C CNN
F 3 "~" H 10750 9850 50  0001 C CNN
	1    10750 9850
	0    1    1    0   
$EndComp
Wire Wire Line
	10500 9850 10600 9850
Wire Wire Line
	10900 9850 11500 9850
Wire Wire Line
	8100 9750 8850 9750
Wire Wire Line
	8100 9850 8850 9850
Wire Wire Line
	8100 9950 8550 9950
$Comp
L Device:R R25
U 1 1 5C35EAF1
P 8550 9550
F 0 "R25" H 8480 9504 50  0000 R CNN
F 1 "4.7k" H 8480 9595 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8480 9550 50  0001 C CNN
F 3 "~" H 8550 9550 50  0001 C CNN
	1    8550 9550
	-1   0    0    1   
$EndComp
Wire Wire Line
	8550 9700 8550 9950
Connection ~ 8550 9950
Wire Wire Line
	8550 9950 9200 9950
Wire Wire Line
	8550 9300 8550 9400
$Comp
L customized_power:+2V8 #PWR0158
U 1 1 5C3841BA
P 8550 9300
F 0 "#PWR0158" H 8550 9150 50  0001 C CNN
F 1 "+2V8" H 8565 9473 50  0000 C CNN
F 2 "" H 8550 9300 50  0001 C CNN
F 3 "" H 8550 9300 50  0001 C CNN
	1    8550 9300
	1    0    0    -1  
$EndComp
$Comp
L customized_power:+2V8 #PWR0168
U 1 1 5C38785B
P 1800 8850
F 0 "#PWR0168" H 1800 8700 50  0001 C CNN
F 1 "+2V8" H 1815 9023 50  0000 C CNN
F 2 "" H 1800 8850 50  0001 C CNN
F 3 "" H 1800 8850 50  0001 C CNN
	1    1800 8850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 2950 9700 3800
Wire Wire Line
	9600 3500 9250 3500
Wire Wire Line
	9600 3500 9600 3800
Connection ~ 9250 3500
Wire Wire Line
	9250 3500 9250 3650
$EndSCHEMATC
