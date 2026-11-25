# A4 – Containerisation

## 1. Introduction

Containerisation is a technology that packages an application with its libraries and dependencies into a lightweight, portable unit called a container.

Containers help deploy the University Result Portal consistently across development, testing and production environments.

## 2. Linux Technologies Used in Containers

### Namespaces

Namespaces provide isolation between containers.

Important namespace types include:

- PID Namespace – Isolates process IDs.
- Network Namespace – Isolates network interfaces and connections.
- Mount Namespace – Isolates filesystem mount points.
- IPC Namespace – Isolates inter-process communication.
- UTS Namespace – Isolates hostname information.
- User Namespace – Isolates user and group IDs.

### Control Groups (cgroups)

Control groups manage and limit resource usage.

They help control:

- CPU consumption.
- Memory usage.
- Other system resources.

For the portal, cgroups can prevent one container from consuming all available server resources.

### Image Layers

Container images are built using multiple layers.

Each layer represents filesystem changes. Shared layers can be reused between images, reducing storage requirements and improving image distribution.

## 3. Containers versus Virtual Machines

| Feature | Containers | Virtual Machines |
|---|---|---|
| Operating system | Share host kernel | Each VM runs its own guest OS |
| Startup time | Usually seconds or less | Usually longer |
| Memory usage | Generally lower | Generally higher |
| Size | Lightweight images | Larger disk images |
| Isolation | Process and kernel-level isolation | Separate guest OS boundary |
| Portability | Highly portable | Portable but heavier |
| Performance | Low overhead in many workloads | Additional virtualisation overhead |

## 4. Portal and Database Deployment Comparison

### Separate Virtual Machines

- Portal and database run in separate VMs.
- Provides strong operating system isolation.
- Requires more memory and storage.
- VM startup and management can take longer.

### Separate Containers

- Portal and database run in separate containers.
- Uses fewer resources in many deployments.
- Supports faster startup and easier deployment.
- Requires careful configuration of networking, persistent storage and security.

## 5. Containerisation for the University Portal

The portal can be packaged into a Docker image and deployed as a container.

Recommended practices include:

1. Use a lightweight base image.
2. Run the application as a non-root user.
3. Set CPU and memory limits.
4. Store database data in persistent volumes.
5. Keep passwords and secrets outside container images.
6. Monitor containers using Docker tools.

Useful commands:

- `docker build` – Builds a container image.
- `docker run` – Starts a container.
- `docker ps` – Lists running containers.
- `docker stats` – Displays resource usage.
- `docker history` – Displays image layers.

## 6. Conclusion

Containerisation provides lightweight deployment, portability and efficient resource utilisation. For the University Result Portal, containers can simplify application deployment and support scaling during high-demand periods.
