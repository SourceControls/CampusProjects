#include "MYCONFIG.h"
#include "CAM.h"
//#include "BLE_server.h"

void setup() {
  // Disable brownout detector.
  WRITE_PERI_REG(RTC_CNTL_BROWN_OUT_REG, 0);

  /* ---Init serial communication speed (baud rate). */
  Serial.begin(115200);
  Serial.setDebugOutput(true);

  configCamera();
  //config wifi
  initWifi();

  
//      createBLEServer();
}

void loop() {

}
