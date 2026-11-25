# A5 – Cloud Deployment and Orchestration

## 1. Introduction

Cloud computing provides computing resources such as servers, storage, databases and networking over the internet. It allows organisations to increase or decrease resources based on workload requirements.

For the University Result Portal, cloud deployment helps handle 150,000 student logins within two hours by providing scalable infrastructure and flexible resource allocation.

## 2. Cloud Service Models

### Infrastructure as a Service (IaaS)
- Provides virtual machines, storage and networking.
- Users manage the operating system and applications.
- Offers flexibility and control.
- Example: AWS EC2 and Azure Virtual Machines.

### Platform as a Service (PaaS)
- Provides a managed platform for application development and deployment.
- Reduces server administration work.
- Allows developers to focus on application development.
- Example: Google App Engine.

### Software as a Service (SaaS)
- Provides ready-to-use software through the internet.
- Users do not manage the underlying infrastructure.
- Example: Google Workspace.

## 3. Proposed Cloud Architecture

The University Result Portal can use a hybrid cloud architecture.

The architecture includes:

1. **Users:** Students access the portal through web browsers.
2. **DNS:** Directs users to the portal's public endpoint.
3. **Load Balancer:** Distributes incoming requests across application instances.
4. **Application Servers:** Run multiple portal instances.
5. **Database Server:** Stores student details and examination results.
6. **Storage and Backup:** Maintains important files and database backups.
7. **Monitoring:** Tracks performance, errors and resource usage.

This architecture improves availability and supports increased traffic during result publication.

## 4. Kubernetes and Container Orchestration

Kubernetes is an open-source container orchestration platform used to deploy, manage and scale containerised applications.

Important Kubernetes components include:

- **Pods:** Smallest deployable units that contain one or more containers.
- **Deployments:** Manage application replicas and updates.
- **Services:** Provide stable network access to application pods.
- **Replicas:** Maintain multiple running application instances.
- **Resource Requests:** Specify the minimum CPU and memory required.
- **Resource Limits:** Restrict maximum CPU and memory usage.
- **Horizontal Pod Autoscaler (HPA):** Automatically adjusts the number of replicas based on resource utilisation or other configured metrics.

For the result portal, Kubernetes can increase application replicas when student traffic rises and reduce them when demand decreases.

## 5. Fixed Virtual Machines versus Kubernetes Autoscaling

| Feature | Fixed Virtual Machines | Kubernetes Autoscaling |
|---|---|---|
| Scaling | Mostly manual | Can be automatic |
| Resource usage | May remain underutilised | Adjusts replicas based on demand |
| Response to traffic | Requires capacity planning | Can respond to changing workloads |
| Management | Individual VM management | Centralised orchestration |
| Cost | Resources may remain idle | Can improve resource utilisation |
| Complexity | Comparatively simpler | Requires Kubernetes knowledge |

Kubernetes autoscaling is useful for workloads with changing traffic, although it requires monitoring, suitable resource requests and correct scaling configuration.

## 6. Proposed Deployment Strategy

A hybrid cloud solution is recommended for the university.

- Keep sensitive student information under appropriate security and access controls.
- Use private infrastructure for services requiring greater control.
- Use public cloud resources to handle increased application traffic.
- Deploy portal containers using Kubernetes.
- Configure replicas and resource limits.
- Use monitoring and backup systems to improve reliability.

## 7. Conclusion

Cloud computing and Kubernetes provide scalability, flexibility and efficient resource management. A hybrid cloud architecture with container orchestration can help the University Result Portal handle peak login traffic while maintaining availability, security and control over student data.
