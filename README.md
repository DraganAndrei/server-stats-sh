Server Monitoring Tool 🔍📊

A lightweight Bash script to monitor CPU, memory, disk, and process statistics on Linux servers.
Features ✨

    Real-time system metrics: CPU, memory (RAM/Swap), and disk usage.

    Top processes: Identify resource-hungry applications (sorted by CPU or RAM).

    Minimal dependencies: Uses built-in Linux tools (top, ps, df).

    Easy automation: Designed for cron jobs or alerting systems.

Usage 🚀
1. Run the Script
bash

chmod +x server-stats.sh  # Make executable
./server-stats.sh         # Execute

2. Sample Output

CPU and Memory usage on the server:
%Cpu(s):  5.2 us,  1.1 sy,  0.0 ni, 93.7 id,  0.0 wa
MiB Mem :  7904.8 total,  1023.2 free,  4321.5 used
MiB Swap:  2048.0 total,  1980.2 free

Disk usage on the server:
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1        50G   20G   30G  40% /

Top 5 CPU-intensive processes:
  PID USER      %CPU %MEM COMMAND
 1234 root      45.2  1.0 firefox
 5678 user      22.1  0.6 chrome

Top 5 Memory-consuming applications:
  PID USER      %CPU %MEM COMMAND
 9101 mysql      8.5  2.5 mysqld
 2468 user       3.2  0.2 python

Technical Details ⚙️
How It Works

    Metrics Collected:

        CPU: Usage breakdown (user/system/idle).

        Memory: RAM/Swap allocation.

        Disk: Free/used space per filesystem.

        Processes: Top 5 by CPU/RAM (PID, user, % usage).

    Commands Used:
    bash

    top -b -n 1          # CPU/memory snapshot
    df -h                # Disk space
    ps -eo ... --sort    # Process statistics

2. Schedule with Cron

Add to /etc/crontab for hourly reports:
bash

0 * * * * root /path/to/server-stats.sh >> /var/log/server-stats.log

Dependencies 📦

    Linux-based OS (tested on Debian/Ubuntu/CentOS).

    Basic GNU tools (top, ps, df, grep).

License 📜

MIT License. Free to use and modify.
Screenshot 📸

Contributions welcome! 🎉
Report issues or suggest improvements via GitHub.
