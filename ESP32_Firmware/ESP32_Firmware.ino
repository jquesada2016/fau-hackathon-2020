#include "esp_camera.h"
#include <Wire.h>
#include <WiFi.h>
#include "SPIFFS.h"
#include "ESPAsyncWebServer.h"
#include "SSD1306.h"
#include <qrcode.h>

#define DHTTYPE DHT11


// Define pins
#define SELECTA0 15
#define SELECTA1 14
#define SELECTA2 2
#define ENABLE 4
#define ECHOSIGNAL 16
#define DISPLAYCLA 12
#define DISPLAYSDA 13
#define DHT11 0


// Function declerations
void select0();
void select1();
void select2();
void select3();
void select4();
void select5();
void select6();
void select7();

void findClosestObject(float values[]);
double getDistance(int sensorNumber);
void triggerSensor();
float getTemp();


SSD1306 display(0x3c, DISPLAYSDA, DISPLAYCLA);
QRcode qrcode(&display);
AsyncWebServer server(80);


const char* ssid = "Jose's Galaxy Note10+";
const char* password = "4077759622";


const char* file1 = "/index.html";
const char* file2 = "/app.js";
const char* file3 = "/styles.css";
const char* JAVASCRIPT = "text/javascript";
const char* CSS = "text/css";
const char* JSON = "text/json";


void setup() {
  Serial.begin(115200);
  Serial.setDebugOutput(true);
  Serial.println();

  // Pin mode setup
  pinMode(SELECTA0, OUTPUT);
  pinMode(SELECTA1, OUTPUT);
  pinMode(SELECTA2, OUTPUT);
  pinMode(DISPLAYSDA, OUTPUT);
  pinMode(DISPLAYCLA, OUTPUT);
  pinMode(ENABLE, OUTPUT);
  pinMode(ECHOSIGNAL, INPUT);
  pinMode(DHT11, INPUT);


  if (!SPIFFS.begin()) {
    Serial.println("it broke #SPIFFS");
  }
  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println("");
  Serial.println("WiFi connected");

  Serial.print("WiFi Ready! Use 'http://");
  Serial.print(WiFi.localIP());
  Serial.println("' to connect");

  // Create IP address link.
  const char* http = "http://";
  const String local_ip = WiFi.localIP().toString();
  const String address = http + local_ip;

  // Create web server routes
  server.on("/", HTTP_GET, [](AsyncWebServerRequest *request){
    Serial.println("Serving /");
    request->send(SPIFFS, "/index.html", "text/html");
  });
  server.on(file2, HTTP_GET, [](AsyncWebServerRequest *request) {
    Serial.println("Serving JS 1");
    request->send(SPIFFS, file2, JAVASCRIPT);
  });
  server.on(file3, HTTP_GET, [](AsyncWebServerRequest *request) {
    Serial.println("Serving JS 2");
    request->send(SPIFFS, file3, CSS);
  });
  server.on("/closestProximity", HTTP_GET, [](AsyncWebServerRequest *request) {
    Serial.println("Serving API call to /closestProximity");
    float values[2];
    findClosestObject(values);
    Serial.println("Finished findClossestObject()");

    String json = "{\"sensor\": " + String(values[0]) + ", \"distance\": " + String(values[1]) + "}";
    
    request->send(200, JSON, json);
  });
  
  
  server.begin();
  
  //display.init();
  //qrcode.init();

  // Display the address as a QR code.
  //qrcode.create(address);
}

void loop() {}


// Function definitions
void select0() {
  digitalWrite(SELECTA0, LOW);
  digitalWrite(SELECTA1, LOW);
  digitalWrite(SELECTA2, LOW);
}

void select1() {
  digitalWrite(SELECTA0, HIGH);
  digitalWrite(SELECTA1, LOW);
  digitalWrite(SELECTA2, LOW);
}

void select2() {
  digitalWrite(SELECTA0, LOW);
  digitalWrite(SELECTA1, HIGH);
  digitalWrite(SELECTA2, LOW);
}

void select3() {
  digitalWrite(SELECTA0, HIGH);
  digitalWrite(SELECTA1, HIGH);
  digitalWrite(SELECTA2, LOW);
}

void select4() {
  digitalWrite(SELECTA0, LOW);
  digitalWrite(SELECTA1, LOW);
  digitalWrite(SELECTA2, HIGH);
}

void select5() {
  digitalWrite(SELECTA0, HIGH);
  digitalWrite(SELECTA1, LOW);
  digitalWrite(SELECTA2, HIGH);
}

void select6() {
  digitalWrite(SELECTA0, LOW);
  digitalWrite(SELECTA1, HIGH);
  digitalWrite(SELECTA2, HIGH);
}

void select7() {
  digitalWrite(SELECTA0, HIGH);
  digitalWrite(SELECTA1, HIGH);
  digitalWrite(SELECTA2, HIGH);
}

void triggerSensor() {
  digitalWrite(ENABLE, LOW);
  delayMicroseconds(5);
  digitalWrite(ENABLE, HIGH);
  delayMicroseconds(10);
  digitalWrite(ENABLE, LOW);
}

float getTemp() {
  return 20 + 273.15;  
}

double getDistance(int sensorNumber) {
    switch (sensorNumber) {
      long duration;
      
      case 0:
        select0();
        triggerSensor();
        duration = pulseIn(ECHOSIGNAL, HIGH);
        return (duration/2.0) * (0.00002005 * sqrt(getTemp()));
      case 1:
        select1();
        triggerSensor();
        duration = pulseIn(ECHOSIGNAL, HIGH);
        return (duration/2.0) * (0.00002005 * sqrt(getTemp()));
      case 2:
        select2();
        triggerSensor();
        duration = pulseIn(ECHOSIGNAL, HIGH);
        return (duration/2.0) * (0.00002005 * sqrt(getTemp()));
      case 3:
        select3();
        triggerSensor();
        duration = pulseIn(ECHOSIGNAL, HIGH);
        return (duration/2.0) * (0.00002005 * sqrt(getTemp()));
      case 4:
        select4();
        triggerSensor();
        duration = pulseIn(ECHOSIGNAL, HIGH);
        return (duration/2.0) * (0.00002005 * sqrt(getTemp()));
      case 5:
        select5();
        triggerSensor();
        duration = pulseIn(ECHOSIGNAL, HIGH);
        return (duration/2.0) * (0.00002005 * sqrt(getTemp()));
      case 6:
        select6();
        triggerSensor();
        duration = pulseIn(ECHOSIGNAL, HIGH);
        return (duration/2.0) * (0.00002005 * sqrt(getTemp()));
      case 7:
        select7();
        triggerSensor();
        duration = pulseIn(ECHOSIGNAL, HIGH);
        return (duration/2.0) * (0.00002005 * sqrt(getTemp()));
      default:
        Serial.println("Error, you suck. The switch statement failed.");
        
    }
}

void findClosestObject(float values[]) {
  float distance = 9999999;
  for (int i = 0; i < 8; i++) {
    float current_distance = getDistance(i);
    if (current_distance < distance) {
      distance = current_distance;
      values[0] = i;
      values[1] = distance;
    }
  }
}
