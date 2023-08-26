#include <WiFi.h>
#include "esp_camera.h"
#include "soc/soc.h"
#include "soc/rtc_cntl_reg.h"
#include "quirc.h"
#include <HTTPClient.h>
  //BLE
//#include <BLEDevice.h>
//#include <BLEServer.h>
//#include <BLEUtils.h>
//#include <BLE2902.h>

  //WIFI
  const char* ssid = "MyLap";
  const char* password = "asd123456";


  //SERVER
  WiFiClient client; 
  HTTPClient http;
  const String serverStr = "https://iot-f77z.onrender.com/sensor?";

  void initWifi(){
    WiFi.begin(ssid,password);
    while (WiFi.status() != WL_CONNECTED) {
    WiFi.reconnect();
    delay(3000);
    Serial.println("Connecting to WiFi..");
  }
  Serial.println("Connected to the WiFi network");
  }
