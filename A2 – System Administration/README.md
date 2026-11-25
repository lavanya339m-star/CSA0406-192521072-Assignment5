# A2 – System Administration

## Objective
Design a secure and maintainable Linux administration approach for the result portal.

## Topics to cover
- User and group management; least-privilege service accounts.
- Service management using `systemctl`.
- Log inspection using `journalctl` and files under `/var/log`.
- Network configuration, DNS, Nginx reverse proxy and firewall rules.
- SSH key-based administration; disable unnecessary password/root access where appropriate.
- Automation using shell scripts and cron.
- Compare shell scripts and Ansible for one server versus a fleet of servers, configuration drift and maintenance.

## Useful commands
```bash
id
getent passwd
systemctl status nginx
journalctl -u nginx --since today
ss -tulpn
sudo ufw status
crontab -l
```

Do not run privileged configuration changes on a production machine without approval.
