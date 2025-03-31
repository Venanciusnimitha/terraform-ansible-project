# README.md
# Terraform-Ansible AWS DevOps Project

## Overview
This project automates the creation of two EC2 instances (App Server and Support Server) with Docker, Ansible, Prometheus, Grafana, and Node Exporter.

## Setup and Run

1. **Initialize and Apply Terraform:**
```bash
cd terraform
terraform init
terraform apply -auto-approve
```

2. **Update Ansible Inventory:**
- Get public IPs from Terraform output.
- Update `hosts.ini` with:
```ini
[app-server]
<app-server-ip>

[support-server]
<support-server-ip>
```

3. **Run Ansible Playbook:**
```bash
cd ../ansible
ansible-playbook -i hosts.ini playbook.yml
```

4. **Access Monitoring Tools:**
- Grafana: `http://<support-server-ip>:3000`
- Prometheus: `http://<support-server-ip>:9090`
- Node Exporter Metrics: `http://<app-server-ip>:9100/metrics`

✅ Done!
