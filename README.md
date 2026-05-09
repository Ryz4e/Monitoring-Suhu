# Industrial Sensor Monitoring System

Desktop-based industrial monitoring application developed using Lazarus (Free Pascal).

## Overview
This project simulates an industrial sensor monitoring system using Modbus register concepts. The application performs real-time temperature monitoring, connection management, and status indication through a graphical user interface (GUI).

The system was designed as a beginner industrial automation and HMI simulation project without requiring external hardware devices.

---

## Features

- Real-time temperature monitoring
- Modbus holding register simulation
- Connect / Disconnect system
- Temperature status indicator:
  - Cold
  - Normal
  - Warm
  - Hot
- Real-time activity logging
- Automatic sensor polling using Timer
- Dynamic UI status update

---

## Temperature Status Range

| Temperature | Status |
|---|---|
| 0 - 24 °C | Cold |
| 25 - 49 °C | Normal |
| 50 - 74 °C | Warm |
| 75 - 100 °C | Hot |

---

## Technologies Used

- Lazarus IDE
- Free Pascal
- GUI Desktop Application
- Timer-based Polling System
- Modbus Register Simulation

---

## Industrial Concepts Implemented

- HMI (Human Machine Interface)
- Modbus Holding Register
- Polling System
- Real-time Monitoring
- Connection Status Handling
- Alarm / Status Indication

---

## Simulation Details

The application simulates reading data from a Modbus holding register:

| Register Address | Description |
|---|---|
| 40001 | Temperature Sensor |

Temperature values are generated dynamically using simulation mode without external hardware.

---

## Future Improvements

- Real Modbus TCP/RTU communication
- Realtime chart visualization
- Multiple sensor monitoring
- Alarm notification system
- Database logging
- PLC integration

---


## Author

Muhamad Rizki
