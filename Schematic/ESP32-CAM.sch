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
L 74xx:74HC137 U16
U 1 1 5E4945AF
P 2350 4500
F 0 "U16" H 2350 5281 50  0000 C CNN
F 1 "74HC137" H 2350 5190 50  0000 C CNN
F 2 "ESP32-CAM:ESP32CAM" H 2350 4500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hc237.pdf" H 2350 4500 50  0001 C CNN
	1    2350 4500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS151 U18
U 1 1 5E49DDE9
P 7100 4600
F 0 "U18" H 7100 5681 50  0000 C CNN
F 1 "74LS151" H 7100 5590 50  0000 C CNN
F 2 "" H 7100 4600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS151" H 7100 4600 50  0001 C CNN
	1    7100 4600
	1    0    0    -1  
$EndComp
Text Label 2250 1850 2    50   ~ 0
+5V
Text Label 2250 1950 2    50   ~ 0
GND
Text Label 6350 2150 1    50   ~ 0
GND
Text Label 6250 2150 1    50   ~ 0
+5V
Text Label 6550 2150 1    50   ~ 0
displaySDA
Text Label 6450 2150 1    50   ~ 0
displayCLA
Text Label 2250 2050 2    50   ~ 0
displayCLA
Text Label 2250 2150 2    50   ~ 0
displaySDA
Text Label 2250 2250 2    50   ~ 0
selectA0
Text Label 2250 2350 2    50   ~ 0
selectA1
Text Label 2250 2450 2    50   ~ 0
selectA2
Text Label 6600 4900 2    50   ~ 0
selectA0
Text Label 6600 5000 2    50   ~ 0
selectA1
Text Label 6600 5100 2    50   ~ 0
selectA2
Wire Wire Line
	2750 4100 3200 4100
Wire Wire Line
	2750 4200 3200 4200
Wire Wire Line
	2750 4300 3200 4300
Wire Wire Line
	2750 4500 3200 4500
Wire Wire Line
	2750 4400 3200 4400
Wire Wire Line
	2750 4600 3200 4600
Wire Wire Line
	2750 4700 3200 4700
Wire Wire Line
	2750 4800 3200 4800
Wire Wire Line
	6350 4000 6600 4000
Wire Wire Line
	6350 4100 6600 4100
Wire Wire Line
	6350 4200 6600 4200
Wire Wire Line
	6350 4300 6600 4300
Wire Wire Line
	6350 4400 6600 4400
Wire Wire Line
	6350 4500 6600 4500
Wire Wire Line
	6350 4600 6600 4600
Wire Wire Line
	6350 4700 6600 4700
Text Notes 6100 3400 0    79   ~ 0
Signals recieved from\nECHO pin on HC-SR04
Text Notes 3050 3950 0    79   ~ 0
Signals to be sent to\nTRIG pin on HC-SR04
$Comp
L Connector_Generic:Conn_01x01 J3
U 1 1 5E4CF23B
P 3750 2050
F 0 "J3" H 3830 2092 50  0000 L CNN
F 1 "Conn_01x01" H 3830 2001 50  0000 L CNN
F 2 "" H 3750 2050 50  0001 C CNN
F 3 "~" H 3750 2050 50  0001 C CNN
	1    3750 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 2050 3550 2050
Text Notes 4300 2150 0    79   ~ 0
Signal recieved from\nDHT11
Text Label 3050 1950 0    50   ~ 0
echoSignal
Text Label 7600 4000 0    50   ~ 0
echoSignal
NoConn ~ 7600 4100
NoConn ~ 3050 2550
NoConn ~ 3050 2250
NoConn ~ 3050 2150
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 5E4D32B5
P 3750 2350
F 0 "J4" H 3830 2342 50  0000 L CNN
F 1 "Conn_01x02" H 3830 2251 50  0000 L CNN
F 2 "" H 3750 2350 50  0001 C CNN
F 3 "~" H 3750 2350 50  0001 C CNN
	1    3750 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2350 3050 2350
Wire Wire Line
	3550 2450 3050 2450
Text Label 2250 2550 2    50   ~ 0
enable
Text Label 1950 4700 2    50   ~ 0
enable
Text Label 6600 5300 2    50   ~ 0
enable
Text Label 1950 4100 2    50   ~ 0
selectA0
Text Label 1950 4200 2    50   ~ 0
selectA1
Text Label 1950 4300 2    50   ~ 0
selectA2
Text Label 1950 4800 2    50   ~ 0
+5V
$Comp
L Connector_Generic:Conn_01x08 J1
U 1 1 5E4DFD31
P 3400 4400
F 0 "J1" H 3480 4392 50  0000 L CNN
F 1 "Conn_01x08" H 3480 4301 50  0000 L CNN
F 2 "" H 3400 4400 50  0001 C CNN
F 3 "~" H 3400 4400 50  0001 C CNN
	1    3400 4400
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J5
U 1 1 5E4E27B3
P 6150 4300
F 0 "J5" H 6068 4817 50  0000 C CNN
F 1 "Conn_01x08" H 6068 4726 50  0000 C CNN
F 2 "" H 6150 4300 50  0001 C CNN
F 3 "~" H 6150 4300 50  0001 C CNN
	1    6150 4300
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J2
U 1 1 5E4E5464
P 3750 1850
F 0 "J2" H 3830 1892 50  0000 L CNN
F 1 "Conn_01x01" H 3830 1801 50  0000 L CNN
F 2 "" H 3750 1850 50  0001 C CNN
F 3 "~" H 3750 1850 50  0001 C CNN
	1    3750 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1850 3550 1850
$Comp
L Project_Symbols:ESP32-CAM U17
U 1 1 5E4E92AF
P 2650 2200
F 0 "U17" H 2650 2815 50  0000 C CNN
F 1 "ESP32-CAM" H 2650 2724 50  0000 C CNN
F 2 "" H 2600 2050 50  0001 C CNN
F 3 "" H 2600 2050 50  0001 C CNN
	1    2650 2200
	1    0    0    -1  
$EndComp
Text Label 2350 5000 0    50   ~ 0
GND
Text Label 2350 3900 0    50   ~ 0
+5V
Text Label 7100 3700 0    50   ~ 0
+5V
Text Label 7100 5600 0    50   ~ 0
GND
Text Label 1950 4500 2    50   ~ 0
GND
Text Label 3250 1850 0    50   ~ 0
+3V3
$Comp
L Connector_Generic:Conn_01x04 J6
U 1 1 5E4F048F
P 6350 2350
F 0 "J6" V 6222 2062 50  0000 R CNN
F 1 "Conn_01x04" V 6313 2062 50  0000 R CNN
F 2 "" H 6350 2350 50  0001 C CNN
F 3 "~" H 6350 2350 50  0001 C CNN
	1    6350 2350
	0    -1   1    0   
$EndComp
$EndSCHEMATC
