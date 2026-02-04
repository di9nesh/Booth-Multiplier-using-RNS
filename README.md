# Booth-Multiplier-using-RNS
32-BIT RADIX-4 BOOTH MULTIPLIER USING RESIDUE NUMBER SYSTEM
# 32-bit Radix-4 Booth Multiplier using Residue Number System (RNS)

This repository presents the design and implementation of a **32-bit Radix-4 Booth Multiplier integrated with the Residue Number System (RNS)** using a **serial processing architecture**.  
The proposed design focuses on achieving **low power consumption, reduced area, and improved timing performance** compared to a conventional Booth multiplier.

The multiplier is implemented in **Verilog HDL**, verified through simulation, synthesized, and analyzed using **industry-standard EDA tools**.

---

## 📌 Project Overview

- **Multiplier Type**: Radix-4 Booth Multiplier  
- **Arithmetic System**: Residue Number System (RNS)  
- **Architecture**: Serial Processing  
- **Operand Width**: 32-bit  
- **Output Width**: 64-bit  
- **Design Goal**: Low Power, Area-Efficient, High-Speed Arithmetic  

---

## 🎯 Objectives

- Design and implement a **Radix-4 Booth Multiplier** to reduce partial products
- Integrate **Residue Number System (RNS)** to eliminate carry propagation
- Use **serial processing** to reduce hardware complexity and power
- Compare **area, power, and timing** with a conventional Booth multiplier

---

## 🧠 Theoretical Background

### Booth Multiplier
Booth’s algorithm optimizes signed binary multiplication by reducing the number of partial products. It is widely used in DSPs, ALUs, and embedded systems due to its efficiency in handling signed numbers.

### Radix-4 Booth Encoding
Radix-4 Booth encoding processes **two bits per cycle**, reducing partial products by half.  
Operations include:
- +A
- +2A
- −A
- −2A
- 0  

This significantly improves speed and reduces hardware usage.

### Residue Number System (RNS)
RNS performs arithmetic using **modular operations**, completely eliminating carry propagation.  
Key benefits:
- Faster arithmetic
- Lower power consumption
- Parallel or serial-friendly computation

### Serial Processing
Serial architectures prioritize:
- Low area
- Low power
- Reduced hardware complexity  

When combined with RNS and Radix-4 Booth encoding, serial processing achieves efficient computation suitable for **resource-constrained systems**.

---

## 🏗 Proposed Architecture

The proposed 32-bit Radix-4 Booth Multiplier using RNS consists of the following blocks:

- **Booth Encoder**
  - Encodes 3-bit windows (Q1, Q0, Q−1)
  - Determines add, subtract, or no-operation

- **Partial Product Generators (PPG)**
  - Generates modular partial products
  - Operates under five moduli:
    - M₁ = 65536
    - M₂ = 65537
    - M₃ = 131071
    - M₄ = 132001
    - M₅ = 262143

- **Modular Accumulators**
  - Sequentially accumulate and shift partial products
  - Minimize hardware using serial accumulation

- **RNS Reconstructor**
  - Uses **Chinese Remainder Theorem (CRT)**
  - Reconstructs final result from residues

---

## 🖼 RTL Schematic

Below is the RTL schematic of the proposed Radix-4 Booth Multiplier using RNS:
<p align="left">
  <img src="https://github.com/user-attachments/assets/411fa7ee-423a-49e9-885a-6fec2be8157f" alt="RTL Schematic" width="700">
</p>

<p align="left"><b>Figure 1.</b> RTL schematic of the 32-bit Radix-4 Booth Multiplier using Residue Number System (RNS).</p>

---

## 🧪 Verification & Simulation

- **Simulation Tool**: ModelSim  
- Functional correctness verified using multiple test cases  
- Example:
  - Input: x = 9, y = 8  
  - Output: 72 (Correct)

RTL schematic was generated and validated using **Quartus Prime**.

---

## 🔧 Tools Used

| Purpose | Tool |
|------|------|
| RTL Design | Verilog HDL |
| Simulation | ModelSim |
| RTL Visualization | Quartus Prime |
| Synthesis & Analysis | Synopsys Design Compiler |
| FPGA Target | Intel Cyclone IV E (EP4CE115F29C7) |

---

## 📊 Performance Analysis

### 🔋 Power Comparison

| Metric | RNS Booth | Basic Booth |
|------|---------|------------|
| Internal Power | 112.43 μW | 326.53 μW |
| Switching Power | 120.70 μW | 351.08 μW |
| Leakage Power | 2.65 × 10³ nW | 3.85 × 10⁴ nW |
| **Total Power** | **235.78 μW** | **716.13 μW** |

➡️ **~67% power reduction**

---

### 📐 Area Comparison

| Metric | RNS Booth | Basic Booth |
|------|---------|------------|
| Combinational Area | 144.14 | 890.77 |
| Buf/Inv Area | 0.53 | 35.38 |
| Non-Comb Area | 465.76 | 0 |
| **Total Cell Area** | **609.94** | **890.77** |

➡️ **Significant area savings**

---

### ⏱ Timing Comparison

| Metric | Basic Booth | RNS Booth |
|------|-------------|----------|
| Fmax (MHz) | 3.14 | **24.43** |
| Setup Slack | -317.54 | **7.22** |
| Hold Slack | 0.385 | **5.199** |
| Min Pulse Width Slack | -3.00 | **2.293** |

➡️ **RNS Booth shows superior timing closure**

---

## ✅ Key Results

- Correct functional operation verified
- Major reduction in **power and area**
- Significant improvement in **maximum operating frequency**
- No timing violations in RNS Booth Multiplier

---

## 🧠 Conclusion

The 32-bit Radix-4 Booth Multiplier using Residue Number System (RNS) successfully demonstrates a **low-power, area-efficient, and high-speed arithmetic architecture**.  
By combining Booth encoding, modular arithmetic, and serial processing, the design eliminates carry propagation and minimizes hardware complexity.

Compared to a conventional Booth multiplier, the proposed architecture achieves:
- Lower power consumption
- Reduced area usage
- Higher operating frequency

This makes it well-suited for **DSP, cryptography, embedded systems, and energy-efficient computing applications**.

---

## 🚀 Future Work

- Extend the design to **64-bit / 128-bit multipliers**
- Explore **dynamic moduli selection**
- ASIC implementation and silicon validation
- Hybrid **serial-parallel architectures**
- Add **fault tolerance and error correction** in RNS

---

## 👥 Authors

- **Dinesh Reddy Munnangi**  
  California State University, Fresno  
  📧 dineshm@mail.fresnostate.edu  

- **Manasa Kunapareddy**  
  California State University, Fresno  
  📧 kunapareddy@mail.fresnostate.edu  

---

## 📚 References

IEEE and international conference references on Radix-4 Booth multipliers, RNS arithmetic, and low-power digital design.

