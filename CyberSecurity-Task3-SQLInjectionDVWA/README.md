# OASIS Infobyte Security Analyst Internship — Task 3

## SQL Injection on DVWA (Low Security)

### Objective

Demonstrate a classic SQL Injection vulnerability using Damn Vulnerable Web Application (DVWA), running locally with XAMPP, and explain the vulnerability, its impact, and how developers can prevent it.

## Lab Environment

* Operating System: Windows
* Web Server: XAMPP
* Application: DVWA
* DVWA Security Level: Low
* Browser: Web browser
* Testing environment: Local lab

## Setup

DVWA was installed locally using XAMPP.

The application was configured and accessed through:

```text
http://127.0.0.1/DVWA/
```

The DVWA security level was set to **Low** before testing.

## SQL Injection

SQL Injection occurs when an application includes untrusted user input directly in an SQL query without properly separating data from SQL commands.

An attacker may be able to manipulate the query by entering specially crafted SQL input.

## Injection Attempt 1

### Payload

```text
' OR '1'='1
```

### Result

The application returned multiple database records instead of a single intended record.

The following records were displayed:

* admin — admin
* Gordon — Brown
* Hack — Me
* Pablo — Picasso
* Bob — Smith

This demonstrated that the SQL query could be manipulated through the input field.

**Evidence:** `screenshots/03-injection-attempt-1.png`

## Injection Attempt 2

### Payload

```text
' OR 1=1 #
```

### Result

The application again returned multiple records:

* admin — admin
* Gordon — Brown
* Hack — Me
* Pablo — Picasso
* Bob — Smith

The `OR 1=1` condition evaluates as true, while `#` comments out the remaining part of the SQL statement.

**Evidence:** `screenshots/04-injection-attempt-2.png`

## Impact

The successful injection demonstrated that an attacker could manipulate the application's database query and retrieve records that were not restricted to the intended input.

The test exposed user information such as first names and surnames stored in the DVWA database.

In a real application, SQL Injection can potentially lead to unauthorised access to sensitive database information and, depending on database permissions, modification or deletion of data.

## Developer Fix

The primary mitigation is to use **parameterised queries / prepared statements**.

Instead of constructing SQL queries by directly concatenating user input, the application should treat user input as data.

Other recommended protections include:

* Input validation.
* Least-privilege database accounts.
* Secure error handling.
* Regular security testing.
* Secure coding practices.

## Screenshots

```text
screenshots/
├── 01-dvwa-security-low.png
├── 02-sql-injection-page.png
├── 03-injection-attempt-1.png
└── 04-injection-attempt-2.png
```

> Use the actual filenames of your screenshots if they are different.

## Conclusion

The DVWA SQL Injection module successfully demonstrated how insufficient input handling can allow SQL query manipulation.

Two different payloads successfully returned multiple database records. The exercise demonstrated the importance of parameterised queries and secure input handling.

## Ethics

This security testing was performed only against DVWA running locally in my own controlled lab environment.

No real website, organisation, or third-party system was targeted.
