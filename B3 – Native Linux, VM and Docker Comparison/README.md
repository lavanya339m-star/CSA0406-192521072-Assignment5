# B3 – Native Linux, VM and Docker Comparison

## Objective
Compare deployment approaches using measured startup time, memory, disk footprint and request throughput.

## Required measurement table
| Metric | Native Linux | VM | Docker |
|---|---:|---:|---:|
| Startup time | Measure | Measure | Measure |
| Idle memory | Measure | Measure | Measure |
| Disk/image size | Measure | Measure | Measure |
| Requests per second | Measure | Measure | Measure |

Do not fill this table with invented measurements. Record hardware, software versions, test duration, concurrency and command used.

## Kubernetes files
- `deployment.yaml` – three replicas with resource requests and limits.
- `service.yaml` – ClusterIP service.

## Example commands
```bash
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
kubectl get pods -o wide
kubectl describe deployment university-portal
kubectl delete pod <pod-name>
kubectl get pods -w
kubectl scale deployment university-portal --replicas=6
kubectl get deployments,pods
```

A local Kubernetes cluster (such as kind or minikube) must be installed before these commands work. Capture genuine output after running them.
