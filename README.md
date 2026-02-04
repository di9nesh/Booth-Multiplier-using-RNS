# Booth-Multiplier-using-RNS
32-BIT RADIX-4 BOOTH MULTIPLIER USING RESIDUE NUMBER SYSTEM
# 32-Bit Radix-4 Booth Multiplier using Residue Number System (RNS)

This project implements an innovative **32-bit serial multiplier** that integrates **Radix-4 Booth Encoding** with the **Residue Number System (RNS)**. By leveraging modular arithmetic and serial processing, the design significantly reduces power consumption and hardware area while eliminating carry propagation.

---

## ## Project Overview

Traditional multipliers often face challenges with carry propagation and high resource utilization as bit-widths increase. This architecture addresses these limitations through:

* 
**Radix-4 Booth Encoding:** Reduces the number of partial products by half through bit-grouping.


* 
**Residue Number System (RNS):** Decomposes large computations into smaller, independent modular operations to eliminate carry propagation.


* 
**Serial Processing:** Minimizes hardware complexity and power consumption, making it ideal for resource-constrained environments like embedded systems and DSPs.



---

## ## Architecture & Methodology

The design is implemented in **Verilog HDL** and consists of several key functional blocks:

* 
**Booth Encoder:** Scans a 3-bit overlapping window of the multiplier to determine the required operation (, , , , or ).


* 
**Partial Product Generators (PPG1-PPG5):** Calculate modular partial products based on five selected moduli:


* 
* 
* 
* 
* 
 




* 
**Modular Accumulators:** Sequentially shift and accumulate partial products reduced modulo their corresponding modulus.


* 
**RNS Reconstructor:** Uses the **Chinese Remainder Theorem (CRT)** to combine residues into the final binary product.



---

## ## Performance Analysis

The proposed RNS Booth Multiplier was compared against a **Basic Booth Multiplier** using the **Nangate 45nm Open Cell Library**.

### ### Power Comparison

| Metric | RNS Booth Multiplier | Basic Booth Multiplier |
| --- | --- | --- |
| **Internal Power** | <br> 

 | <br> 

 |
| **Switching Power** | <br> 

 | <br> 

 |
| **Total Power** | <br>**** 

 | <br>**** 

 |

### ### Area & Timing

* 
**Total Cell Area:** The RNS design utilizes **609.94** units compared to **890.77** for the basic design.


* 
**Frequency ():** The RNS multiplier operates at **24.43 MHz**, significantly faster than the basic version's **3.14 MHz**.


* 
**Timing Stability:** Achieved a setup slack of **7.22** (no violations) versus **-317.537** for the conventional model.



---

## ## Tools Used

* 
**ModelSim:** Functional verification and waveform simulation.


* 
**Quartus Prime:** Compilation, RTL schematic generation, and FPGA placement/routing.


* 
**Synopsys Design Compiler:** Comprehensive area, power, and timing analysis.


* 
**Target FPGA:** Intel Cyclone IV E (EP4CE115F29C7).



---

## ## Authors

* 
**Dinesh Reddy Munnangi** 


* 
**Pavan Kalyan Lakkisetty** 


* 
**Manasa Kunapareddy** 


* 
*California State University, Fresno* 



Would you like me to help you format the Verilog module headers for your `README`'s "Getting Started" section?
