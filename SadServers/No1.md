# Documentation for Issue Resolution  
## Scenario: "Saint John"

### 1. Problem Description
A developer created a testing program that continuously writes to the log file `/var/log/bad.log`.  
This is filling up the disk space.  
The program is no longer needed and should be terminated.

**Goal**:  
Find the process responsible for writing to `/var/log/bad.log` and stop it so that the file no longer grows.

---

### 2. Preconditions
- No root (sudo) access available  
- You can monitor the log file with `tail -f /var/log/bad.log`  
- The script `/home/admin/agent/check.sh` is used to verify the solution.

---

### 3. Steps to Resolve the Issue

#### 3.1 Monitor the Log File  
Check if the file is being written to:
```bash
tail -f /var/log/bad.log
```
#### 3.2 Find process
```bash
ps -aux | grep bad.log
```
#### 3.3 Terminate process via pid
```bash
kill pid #pid needs to be replaced by your pid
```
