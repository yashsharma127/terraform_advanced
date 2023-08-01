# Terraform Infrastructure for AWS

This project contains Terraform configurations for provisioning and managing AWS infrastructure for different environments (dev, prod, and staging). The Terraform code utilizes modules to create EC2 instances, S3 buckets, and DynamoDB tables in AWS. The project also employs proper state management with DynamoDB to ensure the integrity and consistency of the infrastructure.

## Prerequisites
Before using this Terraform project, ensure you have the following prerequisites:

Terraform: Install Terraform by following the instructions in the official documentation.
AWS CLI: Set up the AWS Command Line Interface with appropriate IAM credentials and region configuration.
AWS Account: You must have access to an AWS account with the necessary permissions to create and manage the required resources.

## Getting Started
To get started, follow these steps:

Clone this repository to your local machine:
``` git clone https://github.com/your-username/terraform-aws-infrastructure.git ```

``` cd terraform-aws-infrastructure ```

Review and update the variables in the variables.tf file for each environment (dev, prod, staging) with the desired configurations and your ami for aws instance.

### NOTE 
first use ```terraform init``` by commenting the backend block in the backend_infra.tf file then again run ```terraform init``` by uncommenting it 

Initialize the Terraform project to download the required providers and modules:

``` terraform init ```

Review the execution plan to understand the changes Terraform will make:

``` terraform plan ```

If the plan looks good, apply the changes to create the AWS infrastructure:

``` terraform apply ```



## Usage
The Terraform code in this project provides the following functionalities:

EC2 Instances: The single module is used to create customizable EC2 instances with different configurations for each environment.

S3 Buckets: The same module creates S3 buckets for object storage, allowing you to store various data and assets.

DynamoDB Tables: The module also creates DynamoDB tables, providing a NoSQL database for low-latency data access.

## Variables
The project uses variables to customize the AWS resources for different environments. The variables.tf file contains environment-specific variables.

## State Management
State management is handled using DynamoDB and s3 bucket as the backend for storing Terraform state files. This ensures secure and centralized state storage, preventing state file corruption and enabling team collaboration.


