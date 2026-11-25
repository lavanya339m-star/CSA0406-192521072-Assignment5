# B1 – Linux Server Administration

## Files
- `log_summary.sh` – parses a simple Nginx-style access log.
- `disk_alert.sh` – checks disk usage and reports when it exceeds a threshold.
- `sample_access.log` – small test input only.
- `systemd/portal.service.example` – example unit file; edit paths/user before use.

## Run the log parser
```bash
chmod +x log_summary.sh
./log_summary.sh sample_access.log
```

## Expected sample summary for the supplied sample log
```text
Requests per status code:
  200 4
  302 1
  403 1
  404 1
Busiest client:
  10.0.0.5 4
Total bytes sent: 43200
```

This is a sample result corresponding to the included sample log. Run it yourself and capture genuine terminal evidence.

## System monitoring commands
```bash
ps aux
top
free -h
vmstat 1 5
df -h
ss -tulpn
```
`iostat` may require the `sysstat` package. Record actual output and OS version in your report.
