# Smart Parking Controller on FPGA 🚗

## Overview

The Smart Parking Controller is a hardware-based parking occupancy monitoring system developed using **Verilog HDL** and implemented on the **Nexys4 DDR FPGA (Artix-7)**. The project was developed during **Hacktronics 2.0**, a 36-hour national-level VLSI hackathon organized by Anurag University, where it secured **2nd Place**.

The system tracks parking occupancy in real time using sensor inputs, processes vehicle entry and exit events through a Finite State Machine (FSM), and displays the current occupancy count on a 7-segment display. The complete design was verified through simulation, synthesized and implemented in Xilinx Vivado, and successfully deployed on FPGA hardware.

---

## Key Features

* Real-time parking occupancy monitoring
* FSM-based vehicle entry and exit control
* 4-slot parking lot implementation
* Hardware-efficient RTL architecture
* Overflow and underflow protection
* 7-segment display output
* FPGA hardware deployment and validation
* Low-power and low-resource implementation

---

## System Architecture

```text
Sensor Inputs
      │
      ▼
+----------------+
| Occupancy Logic|
+----------------+
      │
      ▼
+----------------+
| FSM Controller |
+----------------+
      │
      ▼
+----------------+
| Slot Counter   |
+----------------+
      │
      ▼
+----------------+
| Display Driver |
+----------------+
      │
      ▼
7-Segment Display
```

---

## Design Modules

### 1. Occupancy Detection

Receives parking slot sensor inputs and determines the number of occupied parking spaces.

### 2. FSM Controller

Controls system operation using state-based logic:

* IDLE
* ENTRY
* EXIT

The FSM ensures correct interpretation of parking events while preventing invalid state transitions.

### 3. Parking Counter

Maintains the occupancy count and handles:

* Increment operation during vehicle entry
* Decrement operation during vehicle exit
* Full parking condition
* Empty parking condition

### 4. Display Driver

Converts occupancy count into 7-segment display outputs for real-time visualization on FPGA hardware.

---

## FPGA Implementation Flow

The complete FPGA development cycle was followed:

```text
RTL Design
    ↓
Behavioral Simulation
    ↓
Synthesis
    ↓
Implementation
    ↓
Bitstream Generation
    ↓
Hardware Deployment
    ↓
FPGA Validation
```

Toolchain:

* Verilog HDL
* Xilinx Vivado
* Nexys4 DDR FPGA Board
* Artix-7 FPGA

---

## Hardware Validation

The design was successfully programmed onto the Nexys4 DDR FPGA board.

Hardware resources used:

* Switches → Parking slot sensors
* LEDs → Status indication
* 7-Segment Display → Occupancy count display
* On-board 100 MHz Clock

The system was validated under multiple occupancy conditions and demonstrated correct counting behavior in real time.

---

## Resource Utilization

Post-implementation Vivado reports showed:

| Resource        | Used | Available |
| --------------- | ---- | --------- |
| Slice LUTs      | 4    | 63,400    |
| Slice Registers | 1    | 126,800   |
| FPGA Slices     | 1    | 15,850    |
| BRAM            | 0    | 135       |
| DSP Blocks      | 0    | 240       |

Device utilization:

* LUT Utilization: ~0.006%
* Register Utilization: <0.001%
* Slice Utilization: <0.01%

These results demonstrate an extremely lightweight and resource-efficient RTL implementation.

---

## Power Analysis

Post-implementation power analysis:

| Metric                            | Value    |
| --------------------------------- | -------- |
| Total On-Chip Power               | ~0.08 W  |
| Dynamic Power                     | ~0.008 W |
| Static Power                      | ~0.072 W |
| Dynamic Power Share               | ~11%     |
| Static Power Share                | ~89%     |
| I/O Contribution to Dynamic Power | ~93%     |

The low dynamic power consumption indicates minimal switching activity and efficient hardware utilization.

---

## Results

* Successfully implemented on Nexys4 DDR FPGA
* Verified through simulation and hardware testing
* Demonstrated real-time parking occupancy monitoring
* Achieved ultra-low FPGA resource utilization
* Achieved ~0.08 W total on-chip power consumption
* Secured **2nd Place** at Hacktronics 2.0 (36-Hour National VLSI Hackathon)

---

## Learning Outcomes

Through this project, the following concepts were explored:

* Verilog HDL Design
* RTL Development
* FSM Design
* FPGA Synthesis and Implementation
* Constraint File (XDC) Management
* Hardware Debugging
* Resource Utilization Analysis
* Power Analysis
* FPGA-Based System Validation

---

## Future Improvements

* Multi-level parking support
* Sensor debouncing and filtering
* XADC-based real sensor integration
* UART-based monitoring
* IoT-enabled parking dashboard
* Dynamic parking allocation algorithms

---

## Author

**Daksh Mavani**

Hacktronics 2.0 – Team Horizon
2nd Place Winner 🥈
