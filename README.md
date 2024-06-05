# nfCapstone_Project_wordpress

## Description

This project provides a comprehensive Terraform configuration to set up a scalable and secure AWS infrastructure. The configuration includes the creation of a Virtual Private Cloud (VPC) with both public and private subnets, an Internet Gateway, a NAT Gateway, a Bastion Host, and an RDS MySQL instance. Additionally, it sets up an autoscaling group for WordPress servers managed by an Application Load Balancer (ALB). Security groups are defined to control access to the Bastion Host, Web Servers, and Database.

## Technologies Used

- **Terraform**: Infrastructure as Code (IaC) tool for provisioning and managing AWS resources.
- **AWS VPC**: Virtual Private Cloud for creating a logically isolated network.
- **AWS Subnets**: Public and private subnets for segmenting the network.
- **AWS Internet Gateway**: Allows instances in the VPC to connect to the internet.
- **AWS NAT Gateway**: Enables instances in a private subnet to connect to the internet.
- **AWS EC2**: Elastic Compute Cloud instances for running the Bastion Host and Web Servers.
- **AWS RDS**: Relational Database Service for a managed MySQL database.
- **AWS Security Groups**: For controlling inbound and outbound traffic to resources.
- **AWS ALB**: Application Load Balancer for distributing traffic across web servers.
- **AWS Auto Scaling**: Automatically adjusts the number of instances in the ASG based on traffic.

## Architecture Diagram

![Architecture Diagram]([images/architecture_diagram.png](https://drive.google.com/file/d/164N2O24Pnf3bELGhC1O22SklcS8Yl8xu/view))
## Usage

### Prerequisites

- Terraform installed on your local machine.
- AWS account with necessary permissions.
- AWS CLI configured with your credentials.
- An existing SSH key pair for EC2 instances.

### Setup

1. Clone the repository:

    ```sh
    git clone https://github.com/OurAlex/nfCapstone_Project_wordpress.git
    cd nfCapstone_Project_wordpress
    ```

2. Initialize Terraform:

    ```sh
    terraform init
    ```

3. Review the configuration and make necessary adjustments, such as updating the `region`, `ami`, `key_name`, and other variables in the `main.tf` file.

4. Apply the Terraform configuration:

    ```sh
    terraform apply
    ```

5. Confirm the apply action with `yes`. Terraform will provision the specified infrastructure on AWS.

### Outputs

- **ALB DNS Name**: The DNS name of the Application Load Balancer.
- **RDS Endpoint**: The endpoint address of the MySQL RDS instance.

## Cleanup

To destroy the infrastructure created by Terraform, run:

```sh
terraform destroy
