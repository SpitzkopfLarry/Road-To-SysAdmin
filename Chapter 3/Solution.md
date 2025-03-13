
# Linux Shell Exercises

---

## 1. Switch to the third virtual console and log in to your user account  
From your desktop, switch to the **third virtual console** and log in to your user account. Run a few commands. Then exit the shell and return to the desktop.

### Solution:
1. Press:  
   ```
   Ctrl + Alt + F3
   ```
2. Log in with your **username** and **password**.
3. Run some example commands:  
   ```bash
   whoami
   date
   uptime
   ```
4. Exit the shell:  
   ```bash
   exit
   ```
5. Return to the graphical desktop environment:  
   ```
   Ctrl + Alt + F1   # Or Ctrl + Alt + F2 (depends on display manager)
   ```

---

## 2. Open a Terminal window and change the font color to red and the background to yellow  
Open a **Terminal window** and change the **font color** to **red** and the **background color** to **yellow**.

### Solution:
1. Open your terminal emulator (GNOME Terminal, Konsole, etc.).
2. Navigate to Preferences:  
   - `Preferences > Profiles > [Profile Name] > Colors`
3. Uncheck:  
   ```
   Use colors from system theme
   ```
4. Set:
   - **Text color** → `Red`
   - **Background color** → `Yellow`

---

## 3. Find the location of the `mount` command and the `tracepath` man page  
Find the location of the `mount` command and the man page for the `tracepath` command.

### Solution:
- Find `mount` command:  
  ```bash
  which mount
  ```  
  Example output:  
  ```
  /usr/bin/mount
  ```

- Find `tracepath` man page:  
  ```bash
  man -w tracepath
  ```  
  Example output:  
  ```
  /usr/share/man/man8/tracepath.8.gz
  ```

---

## 4. Run and recall commands with modifications  

Type the following three commands, and then recall and change those commands as described:

```bash
$ cat /etc/passwd
$ ls $HOME
$ date
```

### a. Use the command-line recall feature to recall the `cat` command and change `/etc/passwd` to `/etc/group`  
```bash
cat /etc/group
```

### b. Recall the `ls` command, determine how to list files by time (using the man page), and add that option to the `ls $HOME` command line  
```bash
ls -lt $HOME
```

### c. Add format indicators to the `date` command to display the date output as month/day/year 
First of all we need to know how `date`works by using:
```bash
man date
```
The desired outpout is received by:
```bash
date +%D
```

---

## 5. Run the following command using as few characters as possible (tab completion):  
```bash
basename /usr/share/doc/
```

### Solution:  
Use tab completion like this:  
```bash
bas[Tab] /us[Tab]/sh[Tab]/do[Tab]
```

---

## 6. Use the `cat` command to list the contents of `/etc/services` and pipe those contents to the `less` command  
```bash
cat /etc/services | less
```

Or directly with `less`:  
```bash
less /etc/services
```

---

## 7. Run the `date` command so the output displays:  
```
Today is Thursday, December 19, 2019. (Your date will be different of course)
```

### ✅ Solution:
```bash
echo "Today is $(date +"%A, %B %d, %Y")."
```

---
---

## 8. Using variables, find out your hostname, username, shell, and home directory  
```bash
echo "Hostname: $HOSTNAME"
echo "Username: $USER"
echo "Shell: $SHELL"
echo "Home Directory: $HOME"
```

---

## 9. Create an alias called `mypass` that displays the contents of `/etc/passwd`  
Temporary alias:  
```bash
alias mypass='cat /etc/passwd'
```

Permanent alias (in `~/.bashrc`):  
```bash
echo "alias mypass='cat /etc/passwd'" >> ~/.bashrc
source ~/.bashrc
```

---

## 10. Display the man page for the `mount` system call  
```bash
man 2 mount
```
System calls are always on Page 2 of the manual 
