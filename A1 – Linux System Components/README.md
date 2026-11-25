# A1 – Linux System Components

## Objective
Evaluate the Linux operating system components relevant to a high-load university result portal.

## Topics to cover
1. Linux architecture: hardware, kernel, system-call interface, libraries, shell and user applications.
2. Process management: scheduling, process states, priorities and monitoring.
3. Memory management: virtual memory, page cache, swapping, `/proc` and `/sys`.
4. Filesystems and permissions: directory hierarchy, ownership, groups, `rwx`, `chmod`, `chown` and least privilege.
5. Linux versus Windows Server: administration, licensing, automation, resource use and operational trade-offs.

## Evidence to add
- Architecture diagram or labelled explanation.
- Commands used to inspect processes and memory.
- A short Linux/Windows Server comparison table.

## Commands for later verification
```bash
uname -a
cat /etc/os-release
ps aux | head
free -h
cat /proc/meminfo | head
ls -ld /var/log
```

**Environment and command outputs must be recorded from your own system.**
