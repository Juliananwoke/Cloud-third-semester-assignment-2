# Deploy a Static Website on AWS using Terraform

## Objective

Create an AWS infrastructure to host a static website using Terraform. This infrastructure includes:

- AWS S3 for storing the website files.
- CloudFront for content delivery.
- Route 53 for domain name management.
- IAM roles and policies for security.
- API Gateway for handling HTTP requests.
- SSL certificates for HTTPS.

## Prerequisites

- An AWS Account
- A domain name registered in Route 53
- Terraform installed on your local machine

## Files Description

- `main.tf`: Main configuration file that includes all the modules.
- `variables.tf`: Variables used throughout the Terraform project.
- `outputs.tf`: Outputs for the Terraform project.
- `data.tf`: Data sources for Terraform.
- `init.tf`: Initialization configuration for Terraform backend.
- `permissions.tf`: IAM roles and policies definitions.
- `README.md`: Project documentation.
- `s3-static-website.png`: Diagram of the infrastructure.

## Modules

- `s3`: Configuration for the S3 bucket to store the static website files.
- `cloudfront`: Configuration for the CloudFront distribution to deliver content.
- `route53`: Configuration for Route 53 to manage the domain.
- `iam`: IAM roles and policies for security.
- `api_gateway`: API Gateway configuration.
- `ssl_certificate`: SSL certificate configuration.

## Deployment Steps

### 1. Initialize the Terraform Project

Run the following command to initialize the Terraform project and install necessary providers and modules:

```sh
terraform init
```

### 2. Validate the Configuration

Validate the Terraform configuration to ensure there are no syntax errors or misconfigurati

```sh
terraform validate
```

### 3. Plan the Deployment

Generate an execution plan, which shows the changes that Terraform will make to the infrastructure:

```sh
terraform plan
```

### 4. Apply the Configuration

Apply the Terraform configuration to create the infrastructure:

```sh
terraform apply
```
