# A2 – System Administration

## 1. Introduction

System administration involves managing users, services, networking, security and system resources. Proper administration ensures that the University Result Portal remains secure, available and reliable during peak traffic.

## 2. User and Service Management

Linux allows administrators to create users and groups and assign permissions.

Important commands:

- `adduser` – Creates a user.
- `usermod` – Modifies user accounts.
- `passwd` – Changes passwords.
- `systemctl start nginx` – Starts the Nginx service.
- `systemctl status nginx` – Checks service status.
- `journalctl` – Displays system and service logs.

A dedicated non-root account should be created for running the portal application.

## 3. Log Management

System logs help administrators identify errors, failures and suspicious activities.

Important log locations:

- `/var/log/syslog` – General system messages on many Debian-based systems.
- `/var/log/auth.log` – Authentication-related events.
- `/var/log/nginx/access.log` – Web access requests.
- `/var/log/nginx/error.log` – Web server errors.

Log monitoring helps detect failed requests and unusual traffic patterns.

## 4. Network Configuration and Security

The portal requires proper network configuration.

- **IP Address:** Identifies the server on the network.
- **DNS:** Converts the portal domain name into an IP address.
- **Nginx:** Acts as a reverse proxy and forwards requests to the application.
- **Firewall:** Controls incoming and outgoing network traffic.
- **SSH Keys:** Provide secure remote server access.

Only required ports should be exposed. Administrative access should be restricted.

## 5. Automation Using Shell Scripts and Cron

Shell scripts automate repetitive administration tasks.

Examples include:

- Monitoring disk usage.
- Checking service availability.
- Analysing server logs.
- Generating periodic reports.

Cron schedules scripts to execute automatically.

Example:

`*/15 * * * * /opt/portal/scripts/disk_alert.sh`

This runs the disk monitoring script every 15 minutes.

## 6. Shell Scripts versus Ansible

| Feature | Shell Scripts | Ansible |
|---|---|---|
| Setup | Simple | Requires initial configuration |
| One server | Suitable | Suitable |
| 20 servers | Difficult to maintain individually | Easier centralised management |
| Configuration drift | Must be handled manually | Supports repeatable configuration |
| Learning | Basic scripting knowledge | Requires Ansible concepts |
| Maintenance | Can become complex | Structured playbooks |

For a single server, shell scripts are sufficient. For managing multiple servers, Ansible provides better consistency and automation.

## 7. Conclusion

Effective system administration improves the availability, security and performance of the result portal. User management, monitoring, networking and automation help administrators maintain reliable services.
