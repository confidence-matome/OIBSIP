# Common Network Security Threats

## 1. Introduction

Network security threats are a major concern for organizations because modern businesses depend on networks, internet services, cloud systems, and connected devices. Attackers can exploit weaknesses in network infrastructure to interrupt services, intercept communications, impersonate systems, or redirect users to malicious destinations. Common threats such as Denial-of-Service (DoS/DDoS), Man-in-the-Middle (MITM), IP spoofing, and DNS poisoning can affect confidentiality, integrity, and availability. Understanding how these attacks work and applying appropriate security controls can help network administrators reduce risk.

---

# 2. Denial-of-Service (DoS) and Distributed Denial-of-Service (DDoS)

## 2.1 What is DoS/DDoS?

A Denial-of-Service attack attempts to make a system, server, application, or network service unavailable to legitimate users by overwhelming or exhausting its resources.

A Distributed Denial-of-Service attack uses multiple systems, often compromised devices in a botnet, to generate traffic against the target. Because the traffic comes from many sources, DDoS attacks can be more difficult to block than attacks from a single source.

DDoS attacks can target network bandwidth, servers, applications, or other network resources.

## 2.2 Real-World Example

One well-known example occurred in October 2016 when the DNS provider Dyn suffered a large DDoS attack associated with the Mirai botnet. The attack affected access to a number of major internet services and websites that depended on Dyn's infrastructure.

The incident demonstrated how compromised Internet of Things (IoT) devices can be used together to generate large amounts of malicious traffic.

## 2.3 Impact

A successful DoS/DDoS attack can result in:

* Website or application downtime.
* Loss of access to important services.
* Financial losses caused by service interruption.
* Damage to an organization's reputation.
* Increased operational and incident-response costs.

## 2.4 Mitigations

### 1. Rate limiting and traffic filtering

Network devices and applications can limit the amount of traffic accepted from sources or to specific services. Firewalls and filtering systems can also block unwanted traffic.

### 2. DDoS protection services

Organizations can use upstream DDoS protection, traffic scrubbing services, content delivery networks (CDNs), or cloud-based protection to absorb and filter large attacks.

### 3. Network resilience and monitoring

Organizations should maintain redundant infrastructure, monitor unusual traffic patterns, and have an incident-response plan for DDoS events.

NIST recommends several techniques for reducing DDoS and spoofing risks, including source address validation, ACLs, uRPF, and traffic filtering. [1]

---

# 3. Man-in-the-Middle (MITM)

## 3.1 What is a MITM attack?

A Man-in-the-Middle attack occurs when an attacker positions themselves between two communicating parties and intercepts or potentially modifies their communication.

For example, an attacker on an insecure network could attempt to intercept communication between a user and a web service.

MITM attacks can involve techniques such as:

* ARP spoofing.
* DNS manipulation.
* Rogue wireless access points.
* Malicious or fraudulent certificates.
* Compromised network infrastructure.

## 3.2 Real-World Example

A major example involved DigiNotar in 2011. DigiNotar, a certificate authority, was compromised and fraudulent digital certificates were issued. These certificates could potentially allow attackers to impersonate trusted websites and perform HTTPS-based interception.

The incident demonstrated the importance of trusting valid certificate authorities and properly validating certificates.

## 3.3 Impact

MITM attacks can allow attackers to:

* Capture sensitive information.
* Steal authentication credentials.
* Monitor communications.
* Modify information while it is being transmitted.
* Impersonate trusted services.

This can result in account compromise, data theft, financial loss, and privacy violations.

## 3.4 Mitigations

### 1. Use TLS/HTTPS correctly

Organizations should use properly configured HTTPS/TLS and ensure that systems validate certificates correctly.

### 2. Secure wireless networks and remote connections

Strong Wi-Fi security, VPNs, and secure authentication should be used when accessing sensitive services over networks that cannot be fully trusted.

### 3. Network segmentation and strong authentication

Network segmentation can limit the attacker's ability to move between systems. Multi-factor authentication can also reduce the damage caused by stolen credentials.

---

# 4. IP Spoofing

## 4.1 What is IP Spoofing?

IP spoofing occurs when an attacker modifies the source IP address of network packets so that the traffic appears to originate from another system.

The attacker may use spoofed addresses to hide the real source of traffic, bypass certain controls, or support other attacks such as reflection-based DDoS attacks.

IP spoofing does not necessarily mean that the attacker has control of the system whose address is being impersonated.

## 4.2 Real-World Example

In February 2018, GitHub experienced a very large DDoS attack involving exposed memcached servers. Attack traffic used spoofed source addresses and reflection/amplification techniques to generate a much larger volume of traffic toward GitHub.

The incident demonstrated how IP spoofing can contribute to large-scale reflection attacks.

## 4.3 Impact

IP spoofing can:

* Hide the true source of malicious traffic.
* Make investigation more difficult.
* Support reflection and amplification attacks.
* Bypass poorly configured source-address controls.
* Contribute to network disruption.

## 4.4 Mitigations

### 1. Ingress and egress filtering

Network administrators should filter traffic to prevent packets containing invalid source addresses from entering or leaving their networks.

### 2. Access Control Lists and uRPF

ACLs can restrict which source addresses are accepted. Unicast Reverse Path Forwarding (uRPF) can also help verify whether traffic arrives through an expected network path.

### 3. Monitoring and anti-spoofing controls

Organizations should monitor unusual traffic and work with network providers to identify and block spoofed traffic.

NIST recommends source address validation, ACLs, uRPF, and other filtering techniques as part of network protection against spoofing and DDoS attacks. [1]

---

# 5. DNS Poisoning / DNS Spoofing

## 5.1 What is DNS Poisoning?

The Domain Name System (DNS) translates human-readable domain names, such as example.com, into IP addresses.

DNS poisoning or DNS spoofing occurs when an attacker causes a DNS system or user to receive an incorrect IP address for a domain. The victim may then be redirected to an attacker-controlled system.

DNS attacks can occur through compromised DNS infrastructure, manipulated DNS records, or attacks against DNS caches.

## 5.2 Real-World Example

In 2019, the campaign known as Sea Turtle targeted organizations by compromising DNS-related infrastructure and modifying DNS records. Attackers were able to redirect users toward systems controlled by the attackers and collect credentials.

The incident showed that DNS management accounts and registrar infrastructure are important security targets.

## 5.3 Impact

DNS poisoning or spoofing can result in:

* Users being redirected to malicious websites.
* Credential theft.
* Interception of communications.
* Loss of trust in online services.
* Service disruption.
* Phishing and malware delivery.

## 5.4 Mitigations

### 1. Deploy DNSSEC

DNS Security Extensions (DNSSEC) can help protect the authenticity and integrity of DNS information by allowing DNS responses to be validated.

### 2. Protect DNS administration

Organizations should use multi-factor authentication for domain registrar and DNS management accounts. Administrative access should be restricted to authorized personnel.

### 3. Monitor DNS activity

Organizations should monitor DNS records and investigate unexpected changes. Alerts can help identify unauthorized modifications or unusual DNS activity.

NIST's current DNS security guidance emphasizes protecting the integrity and authenticity of DNS information, including the use of DNSSEC. [2]

---

# 6. Comparison of Network Security Threats

| Threat                 | Attack Vector                                   | Who is at Risk?                              | Difficulty to Execute | Ease of Mitigation |
| ---------------------- | ----------------------------------------------- | -------------------------------------------- | --------------------- | ------------------ |
| DoS/DDoS               | Large amounts of malicious traffic or requests  | Websites, servers, networks, online services | Medium–High           | Medium             |
| MITM                   | Intercepting or modifying network communication | Users, organizations, public Wi-Fi users     | Medium–High           | Medium             |
| IP Spoofing            | Forged source IP addresses                      | Networks, servers, DDoS targets              | Medium                | Medium–High        |
| DNS Poisoning/Spoofing | Manipulation of DNS information                 | Organizations, websites, end users           | Medium–High           | Medium             |

The difficulty of an attack can vary depending on the attacker's resources, the target's security controls, and the attack technique being used.

---

# 7. Key Takeaways for Network Administrators

### 1. Protect network traffic and infrastructure

Firewalls, filtering, segmentation, secure protocols, monitoring, and DDoS protection should be used to reduce network attack opportunities.

### 2. Protect critical network services

Services such as DNS, routing infrastructure, wireless networks, and authentication systems should receive strong security controls because compromising them can affect many users.

### 3. Monitor and prepare for attacks

No security control is perfect. Network administrators should continuously monitor systems, investigate unusual activity, maintain updated security controls, and have an incident-response plan ready.

---

# 8. Conclusion

Network security threats can affect the confidentiality, integrity, and availability of organizational systems. DoS/DDoS attacks can make services unavailable, MITM attacks can expose or modify communications, IP spoofing can hide the origin of malicious traffic, and DNS attacks can redirect users to malicious destinations.

The most effective approach is defense in depth. Organizations should combine secure network architecture, traffic filtering, strong authentication, encryption, monitoring, DNS security, and incident-response planning. Understanding how these attacks work allows network administrators to identify weaknesses and apply appropriate controls before an incident occurs.

---

# 9. References

1. National Institute of Standards and Technology (NIST). **SP 800-189: Resilient Interdomain Traffic Exchange: BGP Security and DDoS Mitigation.** 2019.

2. National Institute of Standards and Technology (NIST). **SP 800-81 Revision 3: Secure Domain Name System (DNS) Deployment Guide.** 2026.

3. MITRE ATT&CK. **Adversary-in-the-Middle (T1557).**

4. MITRE ATT&CK. **Network Denial of Service (T1498).**

5. CISA. **DDoS attacks and UDP amplification guidance.**

6. WIRED. **Coverage of the 2016 Dyn DDoS attack and the 2018 GitHub DDoS attack.**

7. Microsoft Security. **DigiNotar certificate compromise and HTTPS interception analysis.**

8. SecurityWeek. **Coverage of the Sea Turtle DNS hijacking campaign.**

---

## Ethical Consideration

This report is for educational and defensive cybersecurity purposes. The attacks discussed should only be studied or simulated in systems that are owned by the tester or where explicit authorization has been provided.
