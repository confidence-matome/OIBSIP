# OASIS Infobyte Security Analyst Internship — Task 1

## Basic Network Scanning with Nmap

**Assessment Date:** 12 September 2026
**Target IP:** `192.168.237.129`
**Testing Machine:** Kali Linux
**Target Machine:** Ubuntu Linux
**Network:** VMware Host-only Network

---

## 1. Context

As part of the OASIS Infobyte Security Analyst Internship, this task involved performing basic network reconnaissance against an Ubuntu Linux target in an isolated VMware Host-only network.

The objective was to identify reachable services, determine service versions, and perform basic operating system detection using Nmap.

---

## 2. Goal

The goals of this task were to:

* Identify open, closed, and filtered TCP ports.
* Identify services running on accessible ports.
* Determine service and version information.
* Perform basic OS detection.
* Document the findings clearly.

---

## 3. Tools

### Nmap

Nmap was used for network discovery, port scanning, service/version detection, and OS detection.

Commands used:

```bash
nmap 192.168.237.129
```

```bash
nmap -sV 192.168.237.129
```

```bash
sudo nmap -O 192.168.237.129
```

---

## 4. Findings

### Basic Scan

The target host was reachable.

| Port    | State  | Service |
| ------- | ------ | ------- |
| 22/tcp  | Closed | SSH     |
| 80/tcp  | Open   | HTTP    |
| 443/tcp | Closed | HTTPS   |

Nmap also reported **997 filtered TCP ports** with no response.

---

### Service and Version Detection

Service detection identified the web service running on port 80 as:

```text
Apache httpd 2.4.66 ((Ubuntu))
```

This confirmed that the target was running an Apache HTTP web server.

---

### OS Detection

Nmap produced several Linux-based OS guesses with confidence levels between **88% and 90%**.

However, Nmap reported:

```text
No exact OS matches for host (test conditions non-ideal).
```

Therefore, the exact operating system version was **not confirmed** by the scan.

---

## 5. Security Observations

The scan showed that:

* HTTP on port 80 was accessible.
* SSH on port 22 was closed.
* HTTPS on port 443 was closed.
* Most scanned TCP ports were filtered.
* The web server disclosed its Apache version during service detection.
* OS detection provided Linux-based guesses but could not confirm an exact OS.

The exposed HTTP service should be reviewed to ensure that the web server is securely configured and does not expose unnecessary information.

---

## 6. Evidence

The following screenshots contain the original Nmap scan results:

```text
screenshots/
├── 01-basic-scan.png
├── 02-service-version-scan.png
└── 03-os-detection.png
```

Detailed scan output is also available in:

```text
nmap_scan_results.txt
```

---

## 7. Recommendation

Based on the scan results:

1. Keep unnecessary services and ports closed.
2. Review the Apache web server configuration.
3. Consider limiting unnecessary version disclosure where appropriate.
4. Ensure the exposed HTTP service is regularly patched and securely configured.
5. Investigate filtered ports if additional services are expected to be accessible.

---

## 8. Reflection

This task helped me practice basic network reconnaissance using Nmap in an isolated lab environment.

I learned how to identify open, closed, and filtered ports, perform service and version detection, and interpret OS detection results without assuming that an unconfirmed result is accurate.

The exercise also reinforced the importance of documenting findings based on actual scan evidence.

---

## 9. Conclusion

The Nmap assessment identified **port 80/tcp as open**, with **Apache httpd 2.4.66 running on Ubuntu**. Ports 22 and 443 were closed, while 997 TCP ports were reported as filtered.

The OS detection suggested a Linux-based system but did not provide an exact OS match. These results provide a basic view of the target's network exposure and services.
