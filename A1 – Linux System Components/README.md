# A1 – Linux System Components

## 1. Introduction

Linux is an open-source operating system widely used for servers because of its stability, security, flexibility and efficient resource management. For the University Result Portal, Linux provides a reliable platform to handle large numbers of student requests during peak login periods.

## 2. Linux Operating System Architecture

Linux follows a layered architecture consisting of:

1. **Hardware:** Includes CPU, RAM, storage devices and network interfaces.
2. **Kernel:** Manages processes, memory, devices, filesystems and networking.
3. **System Call Interface:** Allows applications to request services from the kernel.
4. **System Libraries:** Provide standard functions for application programs.
5. **Shell:** Accepts user commands and communicates with the operating system.
6. **User Applications:** Includes Nginx, databases, monitoring tools and portal applications.

## 3. Process Management

Linux manages multiple processes efficiently using its process scheduler.

- The Completely Fair Scheduler (CFS) distributes CPU time fairly among runnable processes.
- Process priorities influence CPU scheduling.
- Commands such as `ps`, `top` and `htop` help administrators monitor processes.
- Services can be managed using `systemctl`.

For the result portal, process management helps handle multiple student requests simultaneously.

## 4. Memory Management

Linux uses virtual memory to manage available RAM efficiently.

- **Page Cache:** Stores recently accessed file data in memory to improve performance.
- **Swapping:** Moves less frequently used memory pages to disk when RAM is under pressure.
- **Virtual Memory:** Provides processes with separate virtual address spaces.
- **/proc:** Provides information about running processes and memory.
- **/sys:** Exposes information about devices and kernel subsystems.

Commands such as `free -h`, `vmstat` and `cat /proc/meminfo` help monitor memory usage.

## 5. Filesystem and Permissions

Linux uses a hierarchical filesystem structure.

Important directories include:

- `/etc` – Configuration files.
- `/home` – User directories.
- `/var/log` – System and application logs.
- `/bin` – Essential command utilities.
- `/tmp` – Temporary files.

Linux permissions control access using read (r), write (w) and execute (x) permissions for owners, groups and others.

Commands:
- `chmod` – Changes file permissions.
- `chown` – Changes file ownership.
- `ls -l` – Displays file permissions.

The university portal should use restricted service accounts and appropriate permissions to protect student information.

## 6. Linux versus Windows Server

| Feature | Linux Server | Windows Server |
|---|---|---|
| Memory management | Efficient kernel-based management | Windows memory manager |
| Disk management | Supports multiple filesystems | Supports NTFS and ReFS |
| Automation | Shell scripting and cron | PowerShell and Task Scheduler |
| Licensing | Many distributions are free | Usually requires licensing |
| Administration | Command-line and graphical tools | GUI and PowerShell |
| Customisation | Highly flexible | Integrated Microsoft ecosystem |

## 7. Conclusion

Linux is a suitable platform for the University Result Portal because it offers efficient process and memory management, flexible permissions, strong automation support and cost-effective server operation.
