# SECR3253 Network Programming Automation Solution

## Developer Details
- Azmi (sp-muhammad.azmi.hamidi@graduate.utm.my)

## Overview
This solution runs a multi-container network framework utilizing Docker, Ansible orchestration, and Bash telemetry scripts to manage and audit network elements.

## Deployment Steps
1. Spin up the infrastructure environment:
   ```bash
   docker-compose up -d
   ```
2. Execute the Network Configuration Playbook:
   ```bash
   docker exec -it control_node ansible-playbook -i inventory.ini configure_network.yml
   ```
3. Run System Telemetry Metrics Audit:
   ```bash
   ./system_audit.sh
   ```
