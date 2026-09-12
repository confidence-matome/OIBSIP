# OASIS Infobyte Security Analyst Internship — Task 2

## Basic Firewall Configuration with UFW

### Objective

The objective of this task was to configure and test the **Uncomplicated Firewall (UFW)** on Ubuntu.

The firewall was configured to control network traffic and demonstrate how a specific service can be blocked.

### Environment

* **Target OS:** Ubuntu 26.04 Desktop
* **Firewall:** UFW
* **Testing Environment:** VMware Workstation
* **Network:** Host-only network

### Tasks Performed

1. Checked the initial UFW firewall status.
2. Enabled UFW.
3. Configured firewall rules.
4. Blocked HTTP traffic on port 80.
5. Tested whether HTTP access was blocked.
6. Captured screenshots as evidence of the configuration and testing.

### Firewall Configuration

The firewall was enabled and configured using UFW.

Example commands used:

```bash
sudo ufw status
sudo ufw enable
sudo ufw deny 80/tcp
sudo ufw status numbered
```

The HTTP service running on TCP port 80 was blocked using:

```bash
sudo ufw deny 80/tcp
```

### Testing

After applying the firewall rule, HTTP traffic to port 80 was tested to verify that the firewall rule was effective.

The test results were captured in the evidence screenshots.

### Evidence

The `screenshots` directory contains the following evidence:

* `01-ufw-status.png` — UFW firewall status and configured rules.
* `02-http-blocked-test.png` — Test demonstrating that HTTP traffic on port 80 was blocked.

### Key Learning

This task provided practical experience with basic firewall configuration and network traffic control using UFW.

It demonstrated the importance of restricting unnecessary network access and verifying that firewall rules work as intended.

### Files

```text
oasis-infobyte-security-analyst-task-2-ufw/
├── screenshots/
│   ├── 01-ufw-status.png
│   └── 02-http-blocked-test.png
├── README.md
└── ufw_configuration.sh
```

### Conclusion

The UFW firewall was successfully configured and tested on Ubuntu. HTTP traffic on port 80 was blocked, demonstrating a basic firewall control and verification process.


