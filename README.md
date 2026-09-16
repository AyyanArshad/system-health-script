# System Health Report

A lightweight Bash script that generates a snapshot report of a Linux system's health — CPU, memory, disk, top processes, logged-in users, uptime, and SSH status.

## Features

- **System info**: hostname, OS, kernel version, IP address
- **CPU usage**: 1-second sample via `mpstat`
- **Memory usage**: human-readable via `free -h`
- **Disk usage**: human-readable via `df -h`
- **Top 5 processes** by memory and by CPU
- **Total process count**
- **Logged-in users** via `w`
- **System uptime**
- **SSH service status**

## Requirements

- Bash
- `sysstat` package (for `mpstat`) — install with:
  ```bash
  sudo apt install sysstat
  ```
- Standard Linux utilities: `hostnamectl`, `free`, `df`, `ps`, `w`, `uptime`, `systemctl`

## Usage

```bash
chmod +x health_script.sh
./health_script.sh
```

Optionally, redirect output to a timestamped log file:

```bash
./health_script.sh > "health_report_$(date +%F_%H-%M-%S).log"
```

## Sample Output

```
========================
SYSTEM HEALTH REPORT
========================
DATE GENERATED  2026-09-16 14:32:01

Hostname: myserver
Operating System: Ubuntu 24.04 LTS
Kernel: 6.8.0-generic
IP ADDRESS: 192.168.1.42

CPU USAGE:
...

MEMORY USAGE:
...

DISK USAGE:
...

TOP 5 PROCESSES (By memory):
...
```

## Roadmap

This script currently produces a **report** — a point-in-time snapshot. A planned follow-up will turn it into a **monitor**: adding threshold logic (OK / WARNING / CRITICAL) for CPU, memory, and disk, so it can be run on a schedule (cron/systemd timer) and raise alerts rather than just print numbers.

## License
the script link : https://github.com/AyyanArshad/system-health-script/blob/main/health_script.sh
the page url : https://github.com/AyyanArshad/system-health-script
MIT
