# OASIS Infobyte Security Analyst Internship — Task 2

## Basic Firewall Configuration with UFW

### Objective

Configure and test the Uncomplicated Firewall (UFW) on an Ubuntu Linux virtual machine.

The objective was to control incoming and outgoing network traffic by creating firewall rules and testing that blocked traffic was filtered.

### Lab Environment

- Testing Machine: Kali Linux
- Target Machine: Ubuntu Linux
- Target IP: 192.168.237.129
- Network: VMware Host-only Network
- Firewall: UFW

### Firewall Configuration

The following rules were configured:

```bash
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow ssh
sudo ufw deny http
sudo ufw allow 443/tcp
sudo ufw deny 23/tcp
sudo ufw --force enable
