# Altschool Capstone Project
## _A end of year project on cloud engineering track, for class 2023_

The Project :
Overview:

A microservices-based architecture application is deployed on Kubernetes and there’s a need to create a clear IaaC (Infrastructure as Code) deployment to be able to deploy the services in a fast manner.

Setup Details:

Provision the Socks Shop example microservice application – https://microservices-demo.github.io/

Task Instructions:

●  Everything needs to be deployed using an Infrastructure as Code approach.

●  In your solution please emphasize readability, maintainability, and DevOps 

●  We expect a clear way to recreate your setup and will evaluate the project decisions based on:

– Deploy pipeline
– Metrics
– Monitoring
– Logging

●  Use Prometheus as a monitoring tool

●  Use Ansible or Terraform as the configuration management tool.

●  You can use an IaaS provider of your choice.

●  The application should run on Kubernetes

Extra Project Requirements:

●  The application should run on HTTPS with a Let’s Encrypt certificate

●  Bonus points for securing the infrastructure with network perimeter security access rules

●  Bonus points if you use Ansible Vault for encrypting sensitive information

## process

- Terraform was used to provision aws infrastructures
- bashscript was used for the installer.sh file
- jenkins was used to deploy the services 
- prometheus-grafer for monitoring

the sock shop was successfully deployed to sock-shop.direadelaja.com (now deleted)
#Below are some screnshots taken during the process

![Alt text](https://github.com/Temiclint/capstonemain/blob/master/images/Kubernetes%20%20%20Compute%20Resources%20%20%20Pod%20-%20Dashboards%20-%20Grafana.png "Kubernetes compute resource from grafana")
![Alt text](https://github.com/Temiclint/capstonemain/blob/master/images/Kubernetes%20%20%20Compute%20Resources%20%20%20Node%20%20Pods%20%20-%20Dashboards%20-%20Grafana.png "Kubernetes compute resource pods from grafana")
![Alt text](https://github.com/Temiclint/capstonemain/blob/master/images/Screenshot%202024-03-20%20234746.png "sock-shop on sock-shop.direadelaja.com")
![Alt text](https://github.com/Temiclint/capstonemain/blob/master/images/Screenshot%202024-03-20%20191028.png "resource creation with jenkins")
![Alt text](https://github.com/Temiclint/capstonemain/blob/master/images/Screenshot%202024-03-21%20005130.png "certificate from aws")
![Alt text](https://github.com/Temiclint/capstonemain/blob/master/images/Screenshot%202024-03-21%20005007.png "destroying resources used with jenkins")
