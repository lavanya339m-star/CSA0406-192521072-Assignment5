# A4 – Containerisation

## Objective
Explain how containers package and isolate the portal application.

## Topics to cover
- Namespaces: process, network, mount, IPC, UTS and user isolation.
- cgroups: CPU, memory and other resource accounting/limits.
- Layered container images and image reuse.
- Containers versus virtual machines: startup time, footprint, isolation and kernel sharing.
- Compare deploying portal and database in separate VMs versus containers.
- Security practices: non-root user, minimal base image, pinned dependencies, secrets outside images and resource limits.

## Evidence to add
- Container/VM comparison table.
- Description of image layers and runtime isolation.
- Link to the Docker implementation in B2.
