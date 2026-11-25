# B4 – Final Engineering Decision

## 1. Introduction

The University Result Portal must support approximately 150,000 student logins within two hours. A single physical server may not handle this sudden increase in traffic, resulting in slow responses or service failures.

The objective is to select a suitable deployment architecture that provides performance, scalability, availability, security and cost efficiency.

## 2. Adding a Second Service

A second service can be introduced to improve the portal architecture.

For example, a separate Status Service can handle portal health checks and service availability information.

The architecture contains:

- **Result Portal Service:** Handles student login and result requests.
- **Status Service:** Provides application health and availability information.
- **Database Service:** Stores student records and examination results.

Each service should have suitable CPU and memory resource limits to prevent excessive resource consumption.

## 3. Capacity Estimation

The portal must support 150,000 logins within two hours.

Total time:

2 × 60 × 60 = 7,200 seconds

Average login rate:

150,000 / 7,200 = 20.83 logins per second

Assume:
- 8 HTTP requests per login.
- Each container handles 40 requests per second.
- Safety factor = 2.

Estimated request rate:

20.83 × 8 = 166.64 requests per second

Required capacity:

166.64 × 2 = 333.28 requests per second

Required replicas:

333.28 / 40 = 8.33

Therefore, approximately **9 application replicas** are required under these assumptions.

This is an illustrative capacity estimate. Actual replica requirements must be determined using measured application throughput and load-testing results.

## 4. Deployment Architecture Comparison

### Option 1 – Own Servers with Virtual Machines

- Provides control over physical infrastructure.
- Offers isolation between services.
- Requires sufficient hardware resources.
- Scaling may require manual configuration.
- Hardware maintenance increases operational responsibility.

### Option 2 – Own Servers with Containers and Kubernetes

- Supports containerised application deployment.
- Provides automatic restart and replica management.
- Allows resource requests and limits.
- Improves workload management.
- Requires Kubernetes administration skills and sufficient infrastructure capacity.

### Option 3 – Public Cloud Deployment

- Provides flexible computing resources.
- Supports scaling during peak traffic.
- Reduces the need to purchase physical servers.
- Uses a pay-as-you-go pricing model.
- Requires careful management of cloud costs and data security.

### Option 4 – Hybrid Cloud Deployment

- Combines private infrastructure and public cloud resources.
- Sensitive services can remain under controlled infrastructure.
- Public cloud resources can support peak application traffic.
- Provides flexibility and scalability.
- Requires proper networking and security configuration.

## 5. Final Engineering Decision

A **Hybrid Cloud Architecture using Containers and Kubernetes** is recommended for the University Result Portal.

Reasons:

1. Supports increased traffic during result publication.
2. Allows application replicas to scale according to demand.
3. Improves service availability through replica management.
4. Provides resource control using CPU and memory limits.
5. Supports appropriate protection and control of student data.
6. Reduces the need to maintain excess peak capacity on a single physical server.

## 6. Cost and Resource Considerations

The university should compare annual infrastructure costs, including:

- Physical server purchase and maintenance.
- Cloud computing and storage charges.
- Network and data transfer costs.
- Backup and disaster recovery expenses.
- Monitoring and administration costs.

Since result publication creates periodic traffic peaks, the university should avoid maintaining unnecessary resources throughout the year.

## 7. Conclusion

A hybrid cloud deployment using containers and Kubernetes provides a flexible solution for the University Result Portal. It supports workload scaling, resource management and service availability while allowing the university to maintain suitable control over sensitive student information.

The final capacity should be confirmed through actual load testing before production deployment.
