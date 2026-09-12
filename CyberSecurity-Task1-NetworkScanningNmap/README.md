# OASIS INFOBYTE — SECURITY ANALYST INTERNSHIP

## Task 1: Basic Network Scanning with Nmap

---

## 1. Project Overview

This project was completed as part of the OASIS Infobyte Security Analyst Internship.

The objective of this task was to perform basic network reconnaissance against an authorized Ubuntu Linux virtual machine using Nmap.

The assessment focused on identifying the target host, discovering open ports, identifying running services and versions, attempting operating-system detection, and documenting the security implications of the discovered services.

All testing was performed in a controlled and isolated VMware laboratory environment.

---

## 2. Objectives

The objectives of this task were to:

- Perform a basic network scan using Nmap.
- Identify open ports on the target machine.
- Identify services running on open ports.
- Perform service and version detection.
- Attempt operating-system detection.
- Analyze the security implications of discovered services.
- Document the scan results.
- Capture screenshots of the actual Nmap scan results.
- Practice ethical and authorized security testing.

---

## 3. Lab Environment

| Component | Details |
|---|---|
| Testing Machine | Kali Linux |
| Target Machine | Ubuntu Linux |
| Target IP Address | `192.168.237.129` |
| Virtualization Platform | VMware Workstation |
| Network Type | VMware Host-only |
| Scanning Tool | Nmap 7.99 |

---

## 4. Network Configuration

The security assessment was performed using a VMware Host-only network.

The Host-only configuration was selected so that the target virtual machine could communicate with the Kali Linux testing machine without exposing the intentionally configured laboratory services to the normal physical network.

The target was assigned the following IP address:

```text
192.168.237.129
