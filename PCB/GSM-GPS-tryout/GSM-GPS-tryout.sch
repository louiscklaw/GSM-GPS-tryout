EESchema Schematic File Version 4
EELAYER 26 0
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
L MCU_ST_STM32L0:STM32L011K4Tx U?
U 1 1 5BB5FB76
P 4750 3600
F 0 "U?" H 4750 2514 50  0000 C CNN
F 1 "STM32L011K4Tx" H 4750 2423 50  0000 C CNN
F 2 "Package_QFP:LQFP-32_7x7mm_P0.8mm" H 4350 2700 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00206508.pdf" H 4750 3600 50  0001 C CNN
	1    4750 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y?
U 1 1 5BB6188F
P 2500 3450
F 0 "Y?" V 2454 3581 50  0000 L CNN
F 1 "Crystal" V 2545 3581 50  0000 L CNN
F 2 "" H 2500 3450 50  0001 C CNN
F 3 "~" H 2500 3450 50  0001 C CNN
	1    2500 3450
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5BB61973
P 1800 3250
F 0 "C?" V 1548 3250 50  0000 C CNN
F 1 "C" V 1639 3250 50  0000 C CNN
F 2 "" H 1838 3100 50  0001 C CNN
F 3 "~" H 1800 3250 50  0001 C CNN
	1    1800 3250
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5BB619B8
P 1800 3650
F 0 "C?" V 1548 3650 50  0000 C CNN
F 1 "C" V 1639 3650 50  0000 C CNN
F 2 "" H 1838 3500 50  0001 C CNN
F 3 "~" H 1800 3650 50  0001 C CNN
	1    1800 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	1650 3250 1350 3250
Wire Wire Line
	1350 3250 1350 3450
Wire Wire Line
	1350 3650 1650 3650
$Comp
L power:GND #PWR?
U 1 1 5BB61A77
P 1050 3500
F 0 "#PWR?" H 1050 3250 50  0001 C CNN
F 1 "GND" H 1055 3327 50  0000 C CNN
F 2 "" H 1050 3500 50  0001 C CNN
F 3 "" H 1050 3500 50  0001 C CNN
	1    1050 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 3500 1050 3450
Wire Wire Line
	1050 3450 1350 3450
Connection ~ 1350 3450
Wire Wire Line
	1350 3450 1350 3650
Wire Wire Line
	1950 3250 2500 3250
Wire Wire Line
	2500 3250 2500 3300
Wire Wire Line
	1950 3650 2500 3650
Wire Wire Line
	2500 3650 2500 3600
Connection ~ 2500 3650
Connection ~ 2500 3250
$Comp
L Device:Jumper JP?
U 1 1 5BB61D49
P 3400 3250
F 0 "JP?" H 3400 3514 50  0000 C CNN
F 1 "Jumper" H 3400 3423 50  0000 C CNN
F 2 "" H 3400 3250 50  0001 C CNN
F 3 "~" H 3400 3250 50  0001 C CNN
	1    3400 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP?
U 1 1 5BB61E1A
P 3400 3650
F 0 "JP?" H 3400 3914 50  0000 C CNN
F 1 "Jumper" H 3400 3823 50  0000 C CNN
F 2 "" H 3400 3650 50  0001 C CNN
F 3 "~" H 3400 3650 50  0001 C CNN
	1    3400 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3250 3100 3250
Wire Wire Line
	2500 3650 3100 3650
Wire Wire Line
	3700 3250 3800 3250
Wire Wire Line
	3800 3250 3800 3400
Wire Wire Line
	3800 3400 4250 3400
Wire Wire Line
	4250 3500 3800 3500
Wire Wire Line
	3800 3500 3800 3650
Wire Wire Line
	3800 3650 3700 3650
$Comp
L Connector_Generic:Conn_01x08 J?
U 1 1 5BB62B28
P 8350 2100
F 0 "J?" H 8270 1475 50  0000 C CNN
F 1 "Conn_01x08" H 8270 1566 50  0000 C CNN
F 2 "" H 8350 2100 50  0001 C CNN
F 3 "~" H 8350 2100 50  0001 C CNN
	1    8350 2100
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J?
U 1 1 5BB62B91
P 8400 3100
F 0 "J?" H 8320 2475 50  0000 C CNN
F 1 "Conn_01x08" H 8320 2566 50  0000 C CNN
F 2 "" H 8400 3100 50  0001 C CNN
F 3 "~" H 8400 3100 50  0001 C CNN
	1    8400 3100
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J?
U 1 1 5BB62CC3
P 9900 2000
F 0 "J?" H 9980 1992 50  0000 L CNN
F 1 "Conn_01x08" H 9980 1901 50  0000 L CNN
F 2 "" H 9900 2000 50  0001 C CNN
F 3 "~" H 9900 2000 50  0001 C CNN
	1    9900 2000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J?
U 1 1 5BB62D2A
P 9850 3050
F 0 "J?" H 9930 3042 50  0000 L CNN
F 1 "Conn_01x08" H 9930 2951 50  0000 L CNN
F 2 "" H 9850 3050 50  0001 C CNN
F 3 "~" H 9850 3050 50  0001 C CNN
	1    9850 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP?
U 1 1 5BB62F22
P 3400 2850
F 0 "JP?" H 3400 3114 50  0000 C CNN
F 1 "Jumper" H 3400 3023 50  0000 C CNN
F 2 "" H 3400 2850 50  0001 C CNN
F 3 "~" H 3400 2850 50  0001 C CNN
	1    3400 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP?
U 1 1 5BB62F58
P 3400 4000
F 0 "JP?" H 3400 4264 50  0000 C CNN
F 1 "Jumper" H 3400 4173 50  0000 C CNN
F 2 "" H 3400 4000 50  0001 C CNN
F 3 "~" H 3400 4000 50  0001 C CNN
	1    3400 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 4000 3800 4000
Wire Wire Line
	3800 4000 3800 3650
Connection ~ 3800 3650
Wire Wire Line
	3700 2850 3800 2850
Wire Wire Line
	3800 2850 3800 3250
Connection ~ 3800 3250
Wire Wire Line
	2450 2850 3100 2850
Text Label 2450 2850 0    50   ~ 0
PC14
Wire Wire Line
	2450 4000 3100 4000
Text Label 2450 4000 0    50   ~ 0
PC15
$EndSCHEMATC
