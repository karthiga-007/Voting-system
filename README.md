# Digital Voting System using Verilog and Vivado

## Overview

This project implements a simple digital voting system using Verilog HDL. The system allows voting for three candidates (A, B, and C), counts the votes, and determines the winner based on the highest vote count.

The design was developed and simulated using Xilinx Vivado.

---

## Objectives

- Design a digital voting system using Verilog HDL
- Count votes for three candidates
- Display vote counts
- Determine and display the winning candidate
- Verify functionality through simulation

---

## Tools Used

- Xilinx Vivado

---



## Features

- Supports voting for three candidates
- Stores vote counts using 8-bit registers
- Resets all counts when reset is activated
- Automatically determines the candidate with the highest votes
- Displays vote counts and winner information through LEDs

---

## Working

- When `vote_a` is asserted, Candidate A's vote count increases.
- When `vote_b` is asserted, Candidate B's vote count increases.
- When `vote_c` is asserted, Candidate C's vote count increases.
- The system continuously compares vote counts and identifies the current winner.
- The `select` input determines which information is shown on the LEDs.

---

## Simulation Results

The simulation verified correct vote counting, reset functionality, and winner detection for different voting scenarios.

---

## Applications

- Electronic Voting Machines
- Digital Counting Systems
- FPGA-Based Voting Applications
- Educational Digital Design Projects

---

## Conclusion

A digital voting system was successfully designed and simulated using Verilog HDL in Vivado. The system accurately counts votes, identifies the leading candidate, and displays voting results.
