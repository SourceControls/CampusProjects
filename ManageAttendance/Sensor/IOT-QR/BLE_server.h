





#define SERVICE_UUID        "4fafc201-1fb5-459e-8fcc-c5c9c331914b"
#define CHARACTERISTIC_UUID "beb5483e-36e1-4688-b7f5-ea07361b26a8"
/* define the characteristic and it's propeties */
char value[50];
char remoteAddress[18];
BLEServer *MyServer;
BLECharacteristic customCharacteristic(
  CHARACTERISTIC_UUID,
  BLECharacteristic::PROPERTY_READ |
  BLECharacteristic::PROPERTY_NOTIFY |
  BLECharacteristic::PROPERTY_WRITE
);

void stopBLEServer(){
  BLEDevice::deinit(true);
}
void createBLEServer();
void sendBlueToothData(){
//  192.168.0.1__BUOI01__LSV01__116.108.92.248__10.846578802035475__106.79880896438867
    WiFi.disconnect();
    WiFi.begin(ssid,password);
    vTaskDelete(QRCodeReader_Task);
    Serial.print("Connecting to WiFi..");
    while (WiFi.status() != WL_CONNECTED) {
    WiFi.reconnect();
    Serial.print('.');
    delay(3000);
      String masv = value;
      String mac = remoteAddress;
      String request = serverStr+ "MASV=" + masv +"&IP="+mac;
      Serial.print("request: ");
      Serial.println(request);
      http.begin(request.c_str());
      // Send HTTP GET request
      int httpResponseCode = http.GET();
        Serial.println(request);
      
      if (httpResponseCode>0) {
        Serial.print("HTTP Response code: ");
        Serial.println(httpResponseCode);

      }
      else {
        Serial.print("Error code: ");
        Serial.println(httpResponseCode);
      }
      // Free resources
      http.end();
  }
  // createBLEServer();
  configCamera();
}
void handleString(std::string rcvString){
      Serial.print("Value Received from BLE: ");
      Serial.println(rcvString.length());
      for (int i = 0; i < rcvString.length(); i++)
      {
        Serial.print(rcvString[i]);
        value[i]=rcvString[i];
      }
      Serial.println();
      for (int i = rcvString.length(); i < 50; i++)
      {
        value[i]=NULL;
      }
}

class MyServerCallbacks: public BLEServerCallbacks {
  void onConnect(BLEServer* pServer, esp_ble_gatts_cb_param_t *param) {



    sprintf(
      remoteAddress,
      "%.2X:%.2X:%.2X:%.2X:%.2X:%.2X",
      param->connect.remote_bda[0],
      param->connect.remote_bda[1],
      param->connect.remote_bda[2],
      param->connect.remote_bda[3],
      param->connect.remote_bda[4],
      param->connect.remote_bda[5]
    );

    ESP_LOGI(LOG_TAG, "myServerCallback onConnect, MAC: %s", remoteAddress);
    Serial.println("MAC:");
    Serial.println(remoteAddress);
  }
    void onDisconnect(BLEServer* pServer) {
      BLEDevice::startAdvertising();
    }
};

class MyCharacteristicCallbacks: public BLECharacteristicCallbacks {
    void onWrite(BLECharacteristic *customCharacteristic){
    std::string rcvString = customCharacteristic->getValue();
    if(rcvString.length()>0){
      handleString(rcvString);
      customCharacteristic->setValue((char*)&value);
     sendBlueToothData();
    }
    else{
      Serial.println("Empty Value Received!");
    }
  }
};



void createBLEServer(){
  BLEDevice::init("Diem Danh"); // Name your BLE Device
  
  MyServer = BLEDevice::createServer();  //Create the BLE Server
  MyServer->setCallbacks(new MyServerCallbacks());
  
  BLEService *customService = MyServer->createService(SERVICE_UUID); // Create the BLE Service
  
  customService->addCharacteristic(&customCharacteristic);  // Create a BLE Characteristic

  customCharacteristic.setCallbacks(new MyCharacteristicCallbacks());
  
  MyServer->getAdvertising()->addServiceUUID(SERVICE_UUID);  // Configure Advertising

  Serial.println(value);
  customCharacteristic.setValue((char*)&value);
  
  customService->start(); // Start the service  
  
  MyServer->getAdvertising()->start();  // Start the server/advertising
  
}


