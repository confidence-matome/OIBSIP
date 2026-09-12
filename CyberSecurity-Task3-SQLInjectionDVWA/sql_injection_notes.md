# SQL Injection Notes

## Lab Environment

* Application: Damn Vulnerable Web Application (DVWA)
* Server: XAMPP on Windows
* Security Level: Low
* Testing environment: Local lab only
* Module: SQL Injection

## Injection Attempt 1

### Payload

```text
' OR '1'='1
```

### Result

The payload returned multiple records from the DVWA database:

| First Name | Surname |
| ---------- | ------- |
| admin      | admin   |
| Gordon     | Brown   |
| Hack       | Me      |
| Pablo      | Picasso |
| Bob        | Smith   |

### Analysis

The payload changes the logic of the SQL query so that the condition evaluates as true. Instead of returning only the record intended by the application, multiple database records were returned.

This demonstrates that the application is vulnerable to SQL Injection when running at the Low security level.

### Data Exposed

The test exposed user information stored in the DVWA database, including first names and surnames.

---

## Injection Attempt 2

### Payload

```text
' OR 1=1 #
```

### Result

The payload also returned multiple records:

| First Name | Surname |
| ---------- | ------- |
| admin      | admin   |
| Gordon     | Brown   |
| Hack       | Me      |
| Pablo      | Picasso |
| Bob        | Smith   |

### Analysis

The `OR 1=1` condition evaluates as true. The `#` character comments out the remaining part of the SQL statement in the vulnerable application.

As a result, the application returned multiple database records instead of restricting the result to the intended user ID.

### Data Exposed

The test exposed the same user records and demonstrated that a different SQL Injection payload can produce the same unauthorized result.

---

## Security Impact

SQL Injection can allow an attacker to manipulate database queries and potentially access, modify, or delete information depending on the application's database permissions and vulnerability.

In this controlled DVWA lab, the vulnerability allowed multiple user records to be retrieved.

## Recommended Fix

Developers should use **parameterised queries / prepared statements** instead of directly inserting user input into SQL statements.

Additional protections include:

* Validate and constrain user input.
* Use least-privilege database accounts.
* Avoid exposing detailed database errors to users.
* Use secure coding practices and security testing.

## Ethics

All testing was performed against DVWA running locally in my own lab environment. No real website, system, or third-party service was targeted.
