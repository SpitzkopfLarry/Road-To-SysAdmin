# Linux Process Management Exercises

## 1. List all processes running on your system, showing a full set of columns. Pipe the output to the `less` command so you can page through the process list.
```bash
ps aux | less
```

---

## 2. List all processes running on the system and sort those processes by the name of the user running each process.

```bash
ps aux --sort user
```

---

## 3. List all processes running on the system and display the following columns of information: process ID, username, group name, virtual memory size, resident memory size, and the command.

```bash
ps -eo pid,user,group,vsize,rss,comm
```

---

## 4. Run the `top` command to view processes running on your system. Switch between sorting by CPU usage and memory consumption.


```bash
top
```
### Inside `top` (keyboard commands):
- `P` → Sort by CPU usage
- `M` → Sort by memory usage

---

## 5. Start the `gedit` process from your desktop. Make sure you run it as the user you are logged in as. Use the terminal to find the PID and kill the process.


```bash
gedit &
ps aux | grep gedit
kill <PID>
```
Replace `<PID>` with the actual process ID of `gedit` found using the `ps` command.

Alternatively, you can use:
```bash
killall gedit
```
To kill all `gedit` processes.

---

## 6. Run `gedit` again. This time, use the `kill` command to send a STOP signal to the `gedit` process. Try typing text into the `gedit` window and verify that no text appears while it is paused.


```bash
gedit &
ps aux | grep gedit
kill -STOP <PID>
```
> Replace `<PID>` with the process ID of `gedit`.

---

## 7. Use the `killall` command to send a CONT signal to the `gedit` process that you paused in the previous exercise. Verify that you can now type text in the `gedit` window again.

```bash
killall -CONT gedit
```

---

## 8. Install the `xeyes` command (in Fedora, it is in the `xorg-x11-apps` package). Run the `xeyes` command about 20 times in the background so that 20 `xeyes` windows appear on your screen. Move the mouse around and watch the eyes follow the pointer. When you're done, kill all `xeyes` processes with one command using `killall`.

```bash
sudo dnf install xorg-x11-apps
```

### Start 20 processes:
```bash
for i in {1..20}; do xeyes & done
```

### Kill them all:
```bash
killall xeyes
```

---

## 9. As a regular user, run the `gedit` command so that it starts with a nice value of 5.

```bash
nice -n 5 gedit &
```

---

## 10. Using the `renice` command, change the nice value of the `gedit` process you just started to 7. Verify the current nice value is now set to 7.

### Step 1: Find the PID of `gedit`:
```bash
ps aux | grep gedit
```

### Step 2: Change the nice value:
```bash
renice 7 -p <PID>
```

### Step 3: Verify the nice value:
```bash
ps -o pid,ni,comm -p <PID>
```

---
