# MUX-2_1
MUX2_1 
# 2:1 Multiplexer (MUX) Design Using Verilog HDL

## 📌 Project Overview

This project implements a **2:1 Multiplexer (MUX)** using Verilog Hardware Description Language (HDL). The design is developed using Intel Quartus Prime Lite and functionally verified through Questa Intel FPGA Edition RTL Simulation.

A 2:1 MUX is a combinational logic circuit that selects one of two input signals based on a select line and transfers the selected signal to the output.

## 🎯 Objectives

- Design a 2:1 Multiplexer using Verilog HDL.
- Understand digital data selection.
- Develop a Verilog testbench for functional verification.
- Perform RTL simulation using Questa.
- Analyze input and output waveforms.

## ⚙️ Hardware Architecture

**Inputs:**
- A – First data input
- B – Second data input
- S – Select line

**Output:**
- Y – Selected output

### Boolean Expression

`Y = (~S & A) | (S & B)`

### Truth Table

| Select (S) | A | B | Output (Y) |
|---|---|---|---|
| 0 | 0 | X | 0 |
| 0 | 1 | X | 1 |
| 1 | X | 0 | 0 |
| 1 | X | 1 | 1 |

## 💻 Verilog RTL Design

```verilog
module mux_2_1(
    input A,
    input B,
    input S,
    output Y
);

assign Y = S ? B : A;

endmodule
```

## 🧪 Verification and Simulation

The design is verified using a Verilog Testbench in Questa.

**Verification includes:**
- Testing all possible input combinations.
- Checking select line functionality.
- Verifying output correctness.
- Observing RTL simulation waveforms.

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| Intel Quartus Prime Lite | RTL design and compilation |
| Questa Intel FPGA Edition | RTL simulation and verification |
| Verilog HDL | Hardware description language |

## 📂 Project Structure

```text
MUX-2-1/
│
├── mux_2_1.v
├── mux_2_1_tb.v
├── mux_2_1.qpf
├── mux_2_1.qsf
└── README.md
```

## 🚀 Future Enhancements

- 4:1 Multiplexer design.
- 8:1 Multiplexer design.
- Gate-level implementation.
- Comparison of different RTL coding styles.

## 👨‍💻 Author

**NITHISH S**

Electronics and Communication Engineering (ECE)

## 📜 Conclusion

The 2:1 Multiplexer was successfully designed using Verilog HDL in Intel Quartus Prime Lite. Functional verification was performed using Questa RTL Simulation, and the output waveforms were analyzed to confirm the correct operation of the design.
