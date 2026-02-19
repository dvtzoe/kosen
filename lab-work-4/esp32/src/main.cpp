#include <Arduino.h>
#include "BluetoothSerial.h"

#if !defined(CONFIG_BT_ENABLED) || !defined(CONFIG_BLUEDROID_ENABLED)
#error Bluetooth is not enabled! Please run `make menuconfig` to and enable it
#endif

BluetoothSerial SerialBT;

const int touchPin = 4;
const int ledPin = 16;
const int threshold = 20; // Need to be tuned
const int voltagePin = 35;
int touchValue;
int led_logic = 0;
int adc;

void setup()
{
  Serial.begin(9600);
  SerialBT.begin("C2R2_TOUCH_ME"); // Bluetooth device names
  Serial.println("The device started, now you can pair it with bluetooth!");
  analogSetAttenuation(ADC_11db);
  pinMode(ledPin, OUTPUT);
}

void loop()
{
  touchValue = touchRead(touchPin);
  // Serial.printf("led_logic is %d\n", led_logic);
  // printf("Touch Value: %d\n", touchValue);
  adc = analogRead(voltagePin);
  // Serial.printf("Voltage at pin %d: %f [V]\n", voltagePin, voltage);
  if (touchValue <= threshold)
  {
    led_logic = true;
    // Serial.printf("led_logic is %d ----\n", led_logic);
    digitalWrite(ledPin, led_logic);
    // if (SerialBT.connected())
    //   SerialBT.printf("TOUCH detected!!\n");
  }
  else
  {
    led_logic = false;
    digitalWrite(ledPin, led_logic);
  }
  Serial.printf("%d,%d\n", touchValue, adc);
  delay(300);
}