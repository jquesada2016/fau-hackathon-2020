EESchema Schematic File Version 4
LIBS:PCB Design-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "IC PCB Design"
Date ""
Rev "2A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5E4A78C4
P 900 850
F 0 "#FLG03" H 900 925 50  0001 C CNN
F 1 "PWR_FLAG" H 900 1023 50  0000 C CNN
F 2 "" H 900 850 50  0001 C CNN
F 3 "~" H 900 850 50  0001 C CNN
	1    900  850 
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5E4A8381
P 700 1350
F 0 "#FLG01" H 700 1425 50  0001 C CNN
F 1 "PWR_FLAG" H 700 1523 50  0000 C CNN
F 2 "" H 700 1350 50  0001 C CNN
F 3 "~" H 700 1350 50  0001 C CNN
	1    700  1350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 5E4A89D0
P 900 850
F 0 "#PWR03" H 900 700 50  0001 C CNN
F 1 "+5V" H 915 1023 50  0000 C CNN
F 2 "" H 900 850 50  0001 C CNN
F 3 "" H 900 850 50  0001 C CNN
	1    900  850 
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5E4A9BD6
P 700 1350
F 0 "#PWR01" H 700 1100 50  0001 C CNN
F 1 "GND" H 705 1177 50  0000 C CNN
F 2 "" H 700 1350 50  0001 C CNN
F 3 "" H 700 1350 50  0001 C CNN
	1    700  1350
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR02
U 1 1 5E4ABAAD
P 700 1850
F 0 "#PWR02" H 700 1700 50  0001 C CNN
F 1 "+3V3" H 715 2023 50  0000 C CNN
F 2 "" H 700 1850 50  0001 C CNN
F 3 "" H 700 1850 50  0001 C CNN
	1    700  1850
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5E4AC8AA
P 700 1850
F 0 "#FLG02" H 700 1925 50  0001 C CNN
F 1 "PWR_FLAG" H 700 2023 50  0000 C CNN
F 2 "" H 700 1850 50  0001 C CNN
F 3 "~" H 700 1850 50  0001 C CNN
	1    700  1850
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery BT1
U 1 1 5E504F4C
P 1100 1400
F 0 "BT1" H 1208 1446 50  0000 L CNN
F 1 "Battery" H 1208 1355 50  0000 L CNN
F 2 "PCB Design:conn_01x02_battery" V 1100 1460 50  0001 C CNN
F 3 "~" V 1100 1460 50  0001 C CNN
	1    1100 1400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR04
U 1 1 5E506D3B
P 1100 1200
F 0 "#PWR04" H 1100 1050 50  0001 C CNN
F 1 "+5V" H 1115 1373 50  0000 C CNN
F 2 "" H 1100 1200 50  0001 C CNN
F 3 "" H 1100 1200 50  0001 C CNN
	1    1100 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5E5087CA
P 1100 1600
F 0 "#PWR05" H 1100 1350 50  0001 C CNN
F 1 "GND" H 1105 1427 50  0000 C CNN
F 2 "" H 1100 1600 50  0001 C CNN
F 3 "" H 1100 1600 50  0001 C CNN
	1    1100 1600
	1    0    0    -1  
$EndComp
Text Label 2650 1600 2    50   ~ 0
+5V
Text Label 2650 1700 2    50   ~ 0
GND
Text Label 6750 1900 1    50   ~ 0
GND
Text Label 6650 1900 1    50   ~ 0
+5V
Text Label 6950 1900 1    50   ~ 0
displaySDA
Text Label 6850 1900 1    50   ~ 0
displayCLA
Text Label 2650 1800 2    50   ~ 0
displayCLA
Text Label 2650 1900 2    50   ~ 0
displaySDA
Text Label 2650 2000 2    50   ~ 0
selectA
Text Label 2650 2100 2    50   ~ 0
selectB
Text Label 2650 2200 2    50   ~ 0
selectC
Wire Wire Line
	6750 3750 7000 3750
Wire Wire Line
	6750 3850 7000 3850
Wire Wire Line
	6750 3950 7000 3950
Wire Wire Line
	6750 4050 7000 4050
Wire Wire Line
	6750 4150 7000 4150
Wire Wire Line
	6750 4250 7000 4250
Wire Wire Line
	6750 4350 7000 4350
Wire Wire Line
	6750 4450 7000 4450
Text Notes 5950 3100 0    79   ~ 0
Signals recieved from\nECHO pin on HC-SR04
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5E5D3625
P 2450 2300
AR Path="/5E4A058C/5E5D3625" Ref="J?"  Part="1" 
AR Path="/5E4A0240/5E5D3625" Ref="J?"  Part="1" 
AR Path="/5E5D3625" Ref="J1"  Part="1" 
F 0 "J1" H 2530 2342 50  0000 L CNN
F 1 "DHT11" H 2530 2251 50  0000 L CNN
F 2 "PCB Design:conn_01x01" H 2450 2300 50  0001 C CNN
F 3 "~" H 2450 2300 50  0001 C CNN
	1    2450 2300
	-1   0    0    -1  
$EndComp
Text Label 3450 1700 0    50   ~ 0
echoSignal
NoConn ~ 3450 2000
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5E5D3631
P 4150 2100
AR Path="/5E4A058C/5E5D3631" Ref="J?"  Part="1" 
AR Path="/5E4A0240/5E5D3631" Ref="J?"  Part="1" 
AR Path="/5E5D3631" Ref="J3"  Part="1" 
F 0 "J3" H 4230 2092 50  0000 L CNN
F 1 "RX/TX" H 4230 2001 50  0000 L CNN
F 2 "PCB Design:conn_01x02" H 4150 2100 50  0001 C CNN
F 3 "~" H 4150 2100 50  0001 C CNN
	1    4150 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2100 3450 2100
Wire Wire Line
	3950 2200 3450 2200
Text Label 3450 1800 0    50   ~ 0
enable
$Comp
L Connector_Generic:Conn_01x08 J?
U 1 1 5E5D363E
P 6550 4050
AR Path="/5E4A058C/5E5D363E" Ref="J?"  Part="1" 
AR Path="/5E4A0240/5E5D363E" Ref="J?"  Part="1" 
AR Path="/5E5D363E" Ref="J5"  Part="1" 
F 0 "J5" H 6468 4567 50  0000 C CNN
F 1 "EchoReturnPins" H 6468 4476 50  0000 C CNN
F 2 "PCB Design:conn_01x08" H 6550 4050 50  0001 C CNN
F 3 "~" H 6550 4050 50  0001 C CNN
	1    6550 4050
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5E5D3644
P 4150 1600
AR Path="/5E4A058C/5E5D3644" Ref="J?"  Part="1" 
AR Path="/5E4A0240/5E5D3644" Ref="J?"  Part="1" 
AR Path="/5E5D3644" Ref="J2"  Part="1" 
F 0 "J2" H 4230 1642 50  0000 L CNN
F 1 "3..3V Out" H 4230 1551 50  0000 L CNN
F 2 "PCB Design:conn_01x01" H 4150 1600 50  0001 C CNN
F 3 "~" H 4150 1600 50  0001 C CNN
	1    4150 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 1600 3950 1600
$Comp
L Project_Symbols:ESP32-CAM U?
U 1 1 5E5D364B
P 3050 1950
AR Path="/5E4A058C/5E5D364B" Ref="U?"  Part="1" 
AR Path="/5E4A0240/5E5D364B" Ref="U?"  Part="1" 
AR Path="/5E5D364B" Ref="U2"  Part="1" 
F 0 "U2" H 3050 2565 50  0000 C CNN
F 1 "ESP32-CAM" H 3050 2474 50  0000 C CNN
F 2 "PCB Design:ESP32CAM" H 3000 1800 50  0001 C CNN
F 3 "" H 3000 1800 50  0001 C CNN
	1    3050 1950
	1    0    0    -1  
$EndComp
Text Label 3650 1600 0    50   ~ 0
+3V3
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5E5D3657
P 6750 2100
AR Path="/5E4A058C/5E5D3657" Ref="J?"  Part="1" 
AR Path="/5E4A0240/5E5D3657" Ref="J?"  Part="1" 
AR Path="/5E5D3657" Ref="J6"  Part="1" 
F 0 "J6" V 6622 1812 50  0000 R CNN
F 1 "Conn_01x04" V 6713 1812 50  0000 R CNN
F 2 "PCB Design:conn_01x04" H 6750 2100 50  0001 C CNN
F 3 "~" H 6750 2100 50  0001 C CNN
	1    6750 2100
	0    -1   1    0   
$EndComp
Text Notes 3450 3700 0    79   ~ 0
Signals to be sent to\nTRIG pin on HC-SR04
$Comp
L Connector_Generic:Conn_01x08 J?
U 1 1 5E5D366A
P 4700 4150
AR Path="/5E4A058C/5E5D366A" Ref="J?"  Part="1" 
AR Path="/5E4A0240/5E5D366A" Ref="J?"  Part="1" 
AR Path="/5E5D366A" Ref="J4"  Part="1" 
F 0 "J4" H 4780 4142 50  0000 L CNN
F 1 "TrigSendPins" H 4780 4051 50  0000 L CNN
F 2 "PCB Design:conn_01x08" H 4700 4150 50  0001 C CNN
F 3 "~" H 4700 4150 50  0001 C CNN
	1    4700 4150
	1    0    0    -1  
$EndComp
Text Label 3450 2300 0    50   ~ 0
GND
Text Label 3450 1900 0    50   ~ 0
GND
$Comp
L Analog_Switch:CD4051B U1
U 1 1 5E5E0105
P 3000 4050
F 0 "U1" H 3000 4931 50  0000 C CNN
F 1 "CD4051B" H 3000 4840 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 3150 3300 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4052b.pdf" H 2980 4150 50  0001 C CNN
	1    3000 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 3850 4500 3850
Wire Wire Line
	3500 3950 4500 3950
Wire Wire Line
	3500 4050 4500 4050
Wire Wire Line
	3500 4150 4500 4150
Wire Wire Line
	3500 4250 4500 4250
Wire Wire Line
	3500 4350 4500 4350
Wire Wire Line
	3500 4450 4500 4450
Wire Wire Line
	3500 4550 4500 4550
$Comp
L Analog_Switch:CD4051B U3
U 1 1 5E5EBB8C
P 7500 3950
F 0 "U3" H 7500 4831 50  0000 C CNN
F 1 "CD4051B" H 7500 4740 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 7650 3200 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4052b.pdf" H 7480 4050 50  0001 C CNN
	1    7500 3950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2900 4750 3000 4750
Text Label 3000 4750 0    50   ~ 0
GND
Text Label 3100 3350 0    50   ~ 0
+5V
Text Label 8000 3450 0    50   ~ 0
selectA
Text Label 8000 3550 0    50   ~ 0
selectB
Text Label 8000 3650 0    50   ~ 0
selectC
Text Label 8000 3950 0    50   ~ 0
GND
Text Label 8000 3850 0    50   ~ 0
echoSignal
Wire Wire Line
	7500 4650 7600 4650
Text Label 7600 4650 0    50   ~ 0
GND
Text Label 7400 3250 0    50   ~ 0
+5V
$Comp
L Switch:SW_SPST SW1
U 1 1 5E5FB4CA
P 4050 1800
F 0 "SW1" H 4050 2035 50  0000 C CNN
F 1 "SW_SPST" H 4050 1944 50  0000 C CNN
F 2 "" H 4050 1800 50  0001 C CNN
F 3 "~" H 4050 1800 50  0001 C CNN
	1    4050 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 1800 3450 1800
$Comp
L power:GND #PWR06
U 1 1 5E5FC4D7
P 4400 1800
F 0 "#PWR06" H 4400 1550 50  0001 C CNN
F 1 "GND" H 4405 1627 50  0000 C CNN
F 2 "" H 4400 1800 50  0001 C CNN
F 3 "" H 4400 1800 50  0001 C CNN
	1    4400 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1800 4400 1800
Text Label 2500 3550 2    50   ~ 0
selectA
Text Label 2500 3650 2    50   ~ 0
selectB
Text Label 2500 3750 2    50   ~ 0
selectC
Text Label 2500 4050 2    50   ~ 0
GND
Text Label 2500 3950 2    50   ~ 0
enable
$EndSCHEMATC
