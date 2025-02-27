# 🛠️ DevOps Lab  

This is an automated **DevOps environment** running on **Proxmox**, using:  
- **Terraform** – to provision LXC containers  
- **Ansible** – for server configuration  
- **GitHub Actions** – for initial setup & automation  
- **Self-hosted GitHub Runner** – for CI/CD inside Proxmox  
- **Monitoring** – Grafana + Prometheus  

## 🚀 Project Workflow  
1️⃣ **GitHub Actions** configures Proxmox & creates LXC using Terraform  
2️⃣ **LXC container is configured with Ansible**  
3️⃣ **Self-hosted GitHub Runner** is installed inside LXC  
4️⃣ **Further automation runs through the self-hosted runner**  
