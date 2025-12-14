# 5 LED Chaser Using Arduino | Beginner Arduino Project

A **5 LED Chaser Arduino project** where LEDs glow sequentially in forward and reverse direction, creating a running light effect.

This is a **beginner-friendly Arduino project** ideal for:
- Students & hobbyists
- School / college electronics projects
- IoT and embedded systems learners
- Arduino Uno practice

🔗 **Complete step-by-step guide:**  
https://iotbeat.com/blog/how-to-build-a-5-led-chaser-using-arduino-complete-guide

---

## 🔍 Keywords (SEO)
Arduino LED Chaser, LED Chaser Arduino Project, 5 LED Arduino Project, Arduino Beginner Project, LED Running Light Arduino, Arduino Uno LED Sequence, IoT Arduino Projects

---

## 📌 Project Description

An **LED Chaser (Running Light)** is one of the most popular Arduino starter projects.  
In this project, **5 LEDs turn ON and OFF one by one** using Arduino digital pins, producing a smooth chasing effect.

This project helps you understand:
- Arduino digital output pins
- LED polarity & resistors
- Loop-based programming
- Timing control using `delay()`

📖 Learn the full explanation here:  
👉 https://iotbeat.com/blog/how-to-build-a-5-led-chaser-using-arduino-complete-guide

---

## 🧰 Components Required

| Component | Quantity |
|---------|----------|
| Arduino Uno | 1 |
| LEDs (any color) | 5 |
| 220Ω Resistors | 5 |
| Breadboard | 1 |
| Jumper Wires | As needed |
| USB Cable | 1 |

---

## 🔌 Circuit Diagram

![Arduino 5 LED Chaser Circuit](circuit/5_LED_Chaser_Arduino.webp)

### Pin Connections

| LED | Arduino Pin |
|----|-------------|
| LED 1 | D2 |
| LED 2 | D3 |
| LED 3 | D4 |
| LED 4 | D5 |
| LED 5 | D6 |

- LED Anode (+) → Arduino Pin  
- LED Cathode (–) → 220Ω Resistor → GND  

---

## ⚙️ Arduino Code

📁 File: `code/led_chaser.ino`

```cpp
int leds[] = {2, 3, 4, 5, 6};
int totalLeds = 5;

void setup() {
  for (int i = 0; i < totalLeds; i++) {
    pinMode(leds[i], OUTPUT);
  }
}

void loop() {
  for (int i = 0; i < totalLeds; i++) {
    digitalWrite(leds[i], HIGH);
    delay(200);
    digitalWrite(leds[i], LOW);
  }

  for (int i = totalLeds - 1; i >= 0; i--) {
    digitalWrite(leds[i], HIGH);
    delay(200);
    digitalWrite(leds[i], LOW);
  }
}
