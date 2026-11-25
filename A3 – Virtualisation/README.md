# A3 – Virtualisation

## 1. Introduction

Virtualisation allows multiple virtual machines to run on a single physical computer. Each virtual machine can have its own operating system and allocated resources.

For the University Result Portal, virtualisation helps improve hardware utilisation, isolation and resource management.

## 2. Types of Hypervisors

A hypervisor is software that creates and manages virtual machines.

### Type 1 – Bare-Metal Hypervisor

- Runs directly on physical hardware.
- Does not require a conventional host operating system.
- Provides efficient resource management.
- Commonly used in production environments.

Examples: VMware ESXi and Microsoft Hyper-V.

### Type 2 – Hosted Hypervisor

- Runs as an application on an existing operating system.
- Easier to install and use.
- Suitable for development and testing.
- Has additional host operating system overhead.

Example: Oracle VirtualBox.

## 3. Full Virtualisation and Para-Virtualisation

**Full Virtualisation:**
- Provides virtual hardware to the guest operating system.
- Allows an unmodified guest operating system to run.
- Provides strong compatibility.

**Para-Virtualisation:**
- Allows the guest operating system to communicate with the hypervisor through specialised interfaces.
- Can reduce some virtualisation overhead.
- May require guest operating system support or modifications.

## 4. Hardware Virtualisation Support

Modern processors provide hardware virtualisation features.

- Intel VT-x supports hardware-assisted virtualisation.
- AMD-V provides similar virtualisation support for AMD processors.

These technologies help hypervisors run virtual machines more efficiently.

## 5. Benefits and Costs of Virtualisation

### Benefits

1. Better utilisation of physical hardware.
2. Isolation between virtual machines.
3. Easier backup and recovery through snapshots.
4. Flexible allocation of CPU, RAM and storage.
5. Reduced need for separate physical servers.

### Costs

1. Additional CPU and memory overhead.
2. Storage and licensing expenses.
3. Increased configuration complexity.
4. Performance overhead compared with native execution.
5. Requirement for skilled administration.

## 6. VirtualBox versus KVM

| Feature | VirtualBox | KVM |
|---|---|---|
| Hypervisor type | Type 2 | Type 1-style Linux kernel virtualisation |
| Platform | Multiple operating systems | Linux |
| CPU overhead | Depends on host and workload | Generally low with hardware support |
| I/O performance | Suitable for desktop workloads | Suitable for server workloads |
| Host memory | Uses host system memory | Uses host system memory |
| Usage | Development and testing | Production virtualisation |

KVM is generally more suitable for Linux production servers, while VirtualBox is useful for learning and testing.

## 7. Application to the University Portal

The university can use virtual machines to separate the web server, application server and database server.

This provides isolation and makes resource allocation easier. However, sufficient CPU, memory and storage must be available to support peak traffic.

## 8. Conclusion

Virtualisation improves resource utilisation, flexibility and isolation. KVM is a suitable option for production Linux environments, while VirtualBox is useful for development and testing.
