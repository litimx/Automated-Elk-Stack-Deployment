# Cybersecurity-Project-1
## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![Network Diagram](https://github.com/litimx/Cybersecurity-Project-1/blob/main/Images/Network%20Diagram.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the filebeat-playbook file may be used to install only certain pieces of it, such as Filebeat.

[filebeat-playbook.yml](https://github.com/litimx/Cybersecurity-Project-1/blob/main/Ansible/filebeat-playbook.yml)

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting access to the network.
- Load balancers distribute traffic across multiple servers. They can act as an essential part to preventing server overload.
- A jump box can restrict the IP addresses we communicate with, thus reducing public exposure.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the log files and system performance.
- Filebeat monitors the log files, collects log events, and forwards them for indexing
- Metricbeat helps monitor servers by collecting metrics from the system and services running on the server. 

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name 	| Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.1   | Linux        	|
| TODO 	|      	|        	|              	|
| TODO 	|      	|        	|              	|
| TODO 	|      	|        	|                  |

### Access Policies

The machines on the internal network are not exposed to the public Internet.

Only the Jump Box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- 74.105.101.57

Machines within the network can only be accessed by Port 22.
- 10.0.0.4

A summary of the access policies in place can be found in the table below.

| Name 	| Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes/No          	| 10.0.0.1 10.0.0.2	|
|      	|                 	|                  	|
|      	| 	                |                  	|

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous as this is simplistic and reduces complexity on what could otherwise be repetitive or complex tasks. 

The playbook implements the following tasks:
- Configures Elk VM to use more memory
- Installs docker.io
- Installs docker python module
- Download and launch docker elk stack
- Enables docker service

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![sebp-elk](https://github.com/litimx/Cybersecurity-Project-1/blob/main/Images/sebp-elk.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- 10.0.0.5
- 10.0.0.6

We have installed the following Beats on these machines:
- filebeat-8.1.0-amd64.deb
- metricbeat-8.1.0-amd64.deb

These Beats allow us to collect the following information from each machine:
- Filebeat sends our log files to kibana
- Metricbeat measures the behavior and usage of our system resources

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned:

SSH into the control node and follow the steps below:
- Copy the filebeat-configuration.ymo file to the Elk VM.
- Update the hosts file to include 10.0.0.5 and 10.0.0.6
- Run the playbook, and navigate to Kibana @ http://74.105.101.57:5601/app/kibana to check that the installation worked as expected.
