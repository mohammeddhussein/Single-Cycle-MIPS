# Single-Cycle MIPS Architecture

## Overview
This repository contains the hardware digital design and implementation of a Single-Cycle MIPS Processor. The project encompasses the complete design hierarchy, component-level Verilog implementation, and a robust verification environment using both direct and randomized testbenches (future work).

This project was developed based on Computer Architecture Practice Session guidelines by Eng. Abdulkareem Abotaleb.

## Architecture Hierarchy
The processor is modularized into several key components to ensure a clean and scalable digital design. The top-level module (`MIPS_TOP`) connects the following sub-modules:

* **`PC_REG`**: The Program Counter register utilizes an asynchronous, active-low reset.
* **`RAM`**: It's used twice, once for data and the other for instructions.
* **`RegFile`**: A 32x32 Register File supporting simultaneous reads and synchronous writes.
* **`ALU`**: The Arithmetic Logic Unit responsible for data computation.
* **`CTRL_UNIT`**: The Control Unit containing both the Main Decoder and the ALU Decoder.

<img width="954" height="546" alt="Screenshot 2026-06-26 070428" src="https://github.com/user-attachments/assets/3e20f8d2-d034-4209-b186-40150e8bcf5f" />

## Supported Instructions
The Control Unit is designed to decode and execute the following instruction types and operations:

| Instruction Type | Opcode | ALU Operation | Description |
| :--- | :--- | :--- | :--- |
| **R-Type** | 000000 | Varies by Funct | Supports add, sub, and, or, slt |
| **lw** | 100011 | add | Load Word |
| **sw** | 101011 | add | Store Word |
| **beq** | 000100 | subtract | Branch on Equal |
| **addi** | 001000 | add | Add Immediate |
| **j** | 000010 | N/A | Jump |

<img width="265" height="273" alt="Screenshot 2026-06-26 070838" src="https://github.com/user-attachments/assets/612082ac-2845-471b-b81c-09955c665c54" />

## ALU Functional Specification
The ALU utilizes a 3-bit control signal (`ALUControl_2:0`) to determine the executed operation.

| ALUControl | Function |
| :--- | :--- |
| 000 | A AND B |
| 001 | A OR B |
| 010 | A + B |
| 110 | A - B |
| 111 | SLT (Set Less Than) |

## Verification Environment
The testbench environment is implemented to thoroughly verify the processor's functionality via two distinct methods:

### 1. Direct Testing
A specific sequence of MIPS assembly instructions is pre-loaded into the instruction memory to test explicit edge cases, data forwarding (if applicable), branch logic, and basic arithmetic.

### 2. Randomized Testing (Future work)
To ensure robust verification, the testbench utilizes SystemVerilog object-oriented programming (OOP) and randomization features.
