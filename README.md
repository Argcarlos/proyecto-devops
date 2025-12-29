# 🚀 End-to-End DevOps Pipeline: Python + Jenkins + Docker + Ansible

This project demonstrates a professional **Continuous Integration and Continuous Deployment (CI/CD)** workflow, designed to automate the application lifecycle within a hardened **Fedora Linux** environment.

## 🛠️ Tech Stack
* **OS:** Fedora Linux (SELinux & GID Management).
* **Orchestrator:** Jenkins (Pipelines as Code - Groovy).
* **Containers:** Docker (Socket mapping & DinD).
* **Configuration Management:** Ansible (Infrastructure as Code).
* **SCM:** GitHub.

## 🏗️ Pipeline Architecture
The pipeline automatically executes the following stages:
1. **Cleanup:** Workspace cleanup to ensure pristine builds.
2. **Checkout:** Source code synchronization from GitHub.
3. **Build Image:** Construction of an optimized Docker image (`python:3.9-slim`).
4. **Verify:** Auditing the existence of the image in the local engine.
5. **Run App:** Container deployment for logic validation.
6. **Ansible Health Check:** Server status auditing (Memory & Resources) using Playbooks.

## 🛡️ Engineering Challenges Resolved
During implementation, several critical infrastructure hurdles were overcome:
* **Linux Security:** Configured permissions for `/var/run/docker.sock` and managed **SELinux** policies using container context flags (`:z`).
* **User Permissions:** Aligned **GIDs (Group IDs)** between the Fedora host and the Jenkins container to enable seamless Docker orchestration.
* **Privileged Infrastructure:** Executed containers in `privileged` mode to allow system-level audits via Ansible.
