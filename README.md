
> Folder names may vary slightly depending on the exercise, but all designs follow the same **clear RTL structure**.

---

## 🔧 Design Methodology

- **Synchronous design first** (clock-driven logic)
- Clear separation between:
  - Combinational logic
  - Sequential logic
- Explicit reset behavior
- Parameterized designs where applicable
- Written with **synthesizability in mind**

All modules are designed to be **FPGA-ready** and follow good HDL practices.

---

## 🧪 Key Implementations

### 🔹 Combinational Logic
- Multiplexers and decoders
- Encoders with priority logic
- Arithmetic and logical operations

### 🔹 Sequential Logic
- Flip-flops (D, JK, T)
- Registers and counters
- Shift registers (SISO, SIPO, PISO, PIPO)

### 🔹 Finite State Machines (FSM)
- Moore and Mealy-style FSMs
- Clearly defined state transitions
- Clocked state registers with combinational next-state logic

### 🔹 Verification
- Dedicated **testbenches**
- Simulation-based validation
- Waveform analysis for functional correctness

---

## 🧠 Concepts Reinforced

- Timing and clock domains
- Reset strategies
- Deterministic hardware behavior
- Difference between **software flow** and **hardware concurrency**
- RTL abstraction vs gate-level thinking

---

## 🎯 Purpose of This Repository

This project was created to:

- Strengthen understanding of **digital hardware design**
- Translate digital logic theory into **real HDL implementations**
- Practice thinking in **parallel hardware structures**
- Build a foundation for **FPGA and ASIC development**

It serves as a **portfolio artifact** for roles such as:

- FPGA / RTL Engineer
- Digital Design Engineer
- Embedded Hardware Engineer
- Low-level Systems Engineer

---

## 🚀 Possible Extensions

- Clock domain crossing (CDC) examples
- Pipelined datapaths
- UART / SPI controllers in VHDL
- FPGA synthesis and timing analysis reports
- Comparison between VHDL and Verilog implementations

---

## 👤 Author

**Santiago Aguilera**  
Digital Design, FPGA & Embedded Systems Enthusiast  

---

## 📜 License

This repository is intended for educational and demonstration purposes.
