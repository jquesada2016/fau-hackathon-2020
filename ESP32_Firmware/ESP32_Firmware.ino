#include <Wire.h>
#include <WiFi.h>
#include "SSD1306.h"
#include <qrcode.h>

SSD1306 display(0x3c, 14, 15);
QRcode qrcode(&display);

const char* ssid = "Jose's Galaxy Note10+";
const char* password = "4077759622";

void setup() {
  // Initialize serial port.
  Serial.begin(115200);
  Serial.setDebugOutput(true);
  Serial.println();

  // Initialize WiFi module.
  WiFi.begin(ssid, password);
  Serial.printf("Connecting to %s...\n", ssid);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");  
  }
  Serial.println();
  Serial.printf("WiFi successfully connected to %s\n", ssid);

  // Create IP address link.
  const char* https = "https://";
  const String local_ip = WiFi.localIP().toString();
  const String address = https + local_ip;
  
  display.init();
  qrcode.init();

  // Display the address as a QR code.
  qrcode.create(address);
}

void loop() {}
