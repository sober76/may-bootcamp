# DevOps Course Curriculum

## Module 1: Linux and Shell Scripting (2 Classes)

### Class 1: Linux Fundamentals & Application Monitoring
**Project:** Build an application monitoring shell script

- Linux command-line essentials and system administration
- Process management, system monitoring, and performance analysis
- Writing a shell script that monitors application health, CPU, memory, and disk usage
- Implementing alert thresholds and notification mechanisms

**Assignment:** Enhance the script with custom metrics and logging rotation

### Class 2: Advanced Shell Scripting & DevOps Integration
**Project:** Create an infrastructure automation shell script

- Advanced shell scripting: functions, error handling, input validation
- Creating scripts that can be called from Terraform and Python automation
- Building a reusable script library for common DevOps tasks
- Implementing proper logging and debugging capabilities

**Assignment:** Build a shell script for automated backup and restoration

## Module 2: ECS and Container Orchestration (5 Classes)

### Class 3: Two-Tier App Deployment on ECS (Console)
**Project:** Deploy a web application with a database using ECS Console

- Building Docker images for a web application
- Testing containerized applications with Docker Compose locally
- ECS cluster setup through AWS Console with security best practices
- Configuring Application Load Balancer, Route 53, and Custom Domain
- Implementing proper logging and monitoring

**Assignment:** Add HTTPS and implement a custom health check

### Class 4: Infrastructure as Code for ECS
**Project:** Deploy the same two-tier application using Terraform

- Terraform basics and AWS provider configuration
- Converting manual ECS deployment to Infrastructure as Code
- Implementing HTTPS with SSL certificates from AWS Certificate Manager (ACM)
- Configuring HTTPS listeners for Application Load Balancer
- Setting up basic GitHub Actions for Terraform validation

**Assignment:** Implement auto-scaling policies based on custom metrics

### Class 5: Three-Tier Application Architecture
**Project:** Design and prepare a three-tier application for ECS

- Multi-stage Docker builds for optimized container images
- Docker Compose for local testing of multi-container applications
- Designing a production-ready architecture diagram
- Planning network segmentation and security groups

**Assignment:** Optimize Docker images and implement init containers

### Class 6: Advanced Terraform for Multi-Environment Deployment
**Project:** Deploy three-tier application to multiple environments

- DRY Terraform configurations with modules and variables
- Environment-specific configurations (dev and prod)
- Implementing a secure database tier with proper networking
- Configuring CloudFront CDN for static content delivery and caching
- GitHub Actions workflow to deploy Terraform to multiple environments

**Assignment:** Add database backup and restore capabilities

### Class 7: CI/CD with Advanced GitHub Actions
**Project:** Build end-to-end CI/CD pipeline for the three-tier application

- Advanced GitHub Actions: reusable workflows and matrix builds
- Container image building and versioning strategies
- Implementing automated testing in the pipeline
- Monorepo vs. multi-repo strategies with cross-repository triggers

**Assignment:** Add security scanning and compliance checks

## Module 3: Python and Lambda (5 Classes)

### Class 8: Python for DevOps
**Project:** Build basic infrastructure automation with Python

- Key Python modules for DevOps (boto3, requests, paramiko)
- Error handling and logging best practices
- Creating scripts to automate AWS resource management

**Assignment:** Extend the automation script with additional services

### Class 9: Lambda Deployment via Console
**Project:** Deploy a Python automation with AWS Lambda (Console)

- Lambda architecture and execution model
- Building and deploying a Python function via AWS Console
- Integrating with API Gateway for HTTP endpoints
- Setting up appropriate IAM roles and permissions
- Monitoring and troubleshooting Lambda executions

**Assignment:** Add custom metrics and alarms to the Lambda function

### Class 10-11: S3-Triggered Lambda Automation
**Project:** Build and deploy a Python automation triggered by S3 events

- S3 event notification configuration
- Developing a Lambda function to process S3 objects
- Implementing proper error handling and retry mechanisms
- Deploying with public Terraform modules for Lambda

**Assignment:** Add file validation and transformation features

### Class 12: ECS Job with Lambda Trigger
**Project:** Database migration automation as ECS task with Lambda trigger

- Building a containerized application for database migration
- Creating an ECS task definition for the job
- Implementing SQS integration for asynchronous processing
- Developing a Lambda function to trigger the ECS job

**Assignment:** Add reporting and notification features

## Module 4: Kubernetes and GitHub Actions (15 Classes)

### Class 13: Kubernetes Fundamentals
**Project:** Setting up Minikube and deploying a simple application

- Kubernetes architecture and core concepts
- Installing and configuring Minikube locally
- Basic kubectl commands and resource management
- Deploying a simple stateless application

**Assignment:** Scale the application and implement basic resilience

### Class 14: Flask Backend on Kubernetes
**Project:** Deploying a Flask API on Kubernetes

- Containerizing a Flask application
- Creating Kubernetes manifests for the backend
- Implementing ConfigMaps for application configuration
- Setting up services for internal communication

**Assignment:** Add health checks and resource limits

### Class 15: React Frontend and Database Integration
**Project:** Adding React frontend and RDS database connection

- Deploying a React frontend application on Kubernetes
- Setting up Ingress with self-managed SSL certificates
- Configuring secrets for database credentials
- Init containers for database connection validation

**Assignment:** Optimize frontend delivery with content caching

### Class 16: Advanced Kubernetes Concepts
**Project:** Enhancing our 3-tier application with K8s features

- Implementing all three types of probes
- Configuring volume mounts for persistent data
- Creating Kubernetes jobs for database migrations
- Implementing sidecar containers for metrics collection

**Assignment:** Add horizontal pod autoscaling

### Class 17: Monitoring with Prometheus and Grafana
**Project:** Setting up comprehensive monitoring for our application

- Deploying Prometheus on Minikube
- Configuring service discovery for application pods
- Setting up Grafana dashboards for visualization
- Implementing alerting rules

**Assignment:** Create custom dashboards for business metrics

### Class 18: CI/CD with GitHub Actions for Kubernetes
**Project:** Building CI/CD pipeline for our Kubernetes application

- Setting up GitHub repository and workflow files
- Implementing container build and push actions
- Configuring testing in the CI pipeline
- Preparing for GitOps deployment

**Assignment:** Add vulnerability scanning to the pipeline

### Class 19: GitOps with ArgoCD
**Project:** Implementing GitOps deployment for our application

- ArgoCD setup and configuration on Minikube
- Application deployment through GitOps principles
- Implementing sync policies and automated deployments
- Managing configuration through Git

**Assignment:** Implement a canary deployment strategy

### Class 20: Terraform for EKS - Part 1
**Project:** Provisioning EKS with managed node groups

- Terraform fundamentals for AWS EKS
- VPC and networking setup for EKS
- Creating EKS cluster with managed node groups
- IAM roles and security configuration

**Assignment:** Add cluster autoscaling capabilities

### Class 21: Terraform for EKS - Part 2
**Project:** Extending EKS with self-managed nodes and SSL

- Adding self-managed node groups to EKS
- Implementing SSL with cert-manager and AWS Certificate Manager (ACM)
- Configuring OIDC for load balancer authentication
- Implementing pod identity to replace IAM roles for service accounts (IRSA)

**Assignment:** Implement node group updates with zero downtime

### Class 22: Terraform for EKS - Part 3
**Project:** Implementing Fargate profiles and EKS autoscaling

- Configuring Fargate profiles for serverless workloads
- Setting up EKS auto mode for dynamic scaling
- Implementing cost optimization strategies
- Multi-environment setup with Terraform

**Assignment:** Analyze and optimize cluster costs

### Class 23: Microservices on EKS - Part 1
**Project:** Deploying first two microservices on EKS

- Microservices architecture design principles
- Breaking down monolith into microservices
- Containerizing and deploying first microservices
- Service-to-service communication patterns

**Assignment:** Implement resilience patterns for microservices

### Class 24: Microservices on EKS - Part 2
**Project:** Completing 4-microservice deployment on EKS

- Deploying remaining microservices to EKS with Fargate
- EKS Load Balancer Controller implementation
- CSI driver for storage integration
- AWS Secret Manager integration with pull secrets
- Service mesh implementation for secure service-to-service communication

**Assignment:** Implement distributed tracing

### Class 25: Helm and Kustomize for Kubernetes
**Project:** Advanced deployment strategies for our microservices

- Helm charts for complex application deployment
- Kustomize for environment-specific configurations
- Deploying Grafana and Prometheus with Helm
- Managing application versions and updates

**Assignment:** Create a custom Helm chart for your application

### Class 26: Advanced GitHub Actions for Kubernetes
**Project:** Building comprehensive CI/CD for microservices

- Reusable workflows with GitHub Actions
- Implementing matrix builds for multiple microservices
- HIPAA-compliant CI/CD pipeline implementation
- Implementing DevSecOps in the pipeline
- Automated testing and validation with compliance checks

**Assignment:** Set up approval workflows for production deployments

### Class 27: Multi-Environment Kubernetes Strategy
**Project:** Setting up multiple environments for our microservices

- Implementing development, staging, and production environments
- Environment-specific configurations and secrets
- Promoting changes through environments
- Resource optimization across environments

**Assignment:** Implement feature toggles for environment-specific features

### Class 28: Stateful Applications on Kubernetes
**Project:** Deploying stateful applications on EKS auto mode

- StatefulSets fundamentals and use cases
- Persistent volume management for stateful applications
- Backup and recovery strategies
- High availability configurations

**Assignment:** Implement automated backup and restoration

### Class 29: Production Branching Strategy with GitHub Actions
**Project:** Implementing GitFlow for production deployments

- Designing a branching strategy for production environments
- Environment-specific workflows in GitHub Actions
- Implementing approval processes and protected branches
- Release management and versioning

**Assignment:** Set up automated release notes generation

### Class 30: GitHub Advanced Security
**Project:** Implementing comprehensive security scanning

- Secret scanning and prevention of secret leakage
- Dependabot for dependency vulnerability management
- Code scanning and SAST integration
- Security policy implementation

**Assignment:** Create a security compliance report

## Course Completion and Certification

Upon completion of all 30 classes and associated projects, students will receive:

- DevOps Practitioner Certificate
- Portfolio of real-world projects
- GitHub repository showcasing all implemented solutions
- Reference architecture diagrams for future implementations