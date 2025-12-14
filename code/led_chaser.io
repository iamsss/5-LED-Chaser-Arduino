/*
  Project: 5 LED Chaser Using Arduino
  Description: LEDs glow one by one in forward and reverse sequence
  Board: Arduino Uno
  Author: IoTBeat
  Guide: https://iotbeat.com/blog/how-to-build-a-5-led-chaser-using-arduino-complete-guide
*/

int leds[] = {2, 3, 4, 5, 6};   // Arduino pins connected to LEDs
int totalLeds = 5;             // Total number of LEDs
int delayTime = 200;           // Delay time in milliseconds

void setup() {
  // Set all LED pins as OUTPUT
  for (int i = 0; i < totalLeds; i++) {
    pinMode(leds[i], OUTPUT);
  }
}

void loop() {

  // 🔁 Forward LED Chaser (Left → Right)
  for (int i = 0; i < totalLeds; i++) {
    digitalWrite(leds[i], HIGH);
    delay(delayTime);
    digitalWrite(leds[i], LOW);
  }

  // 🔁 Reverse LED Chaser (Right → Left)
  for (int i = totalLeds - 1; i >= 0; i--) {
    digitalWrite(leds[i], HIGH);
    delay(delayTime);
    digitalWrite(leds[i], LOW);
  }
}
