# Terraform AWS EC2 Instance Project

This project contains a Terraform script that provisions a simple AWS EC2 instance. It is meant to be a starting point for learning Terraform with AWS.

## Prerequisites

Before you begin, ensure you have the following:
- An AWS account with appropriate permissions to create EC2 instances.
- The AWS CLI installed and configured with your credentials.
- Terraform installed on your local machine.

## Project Structure

- `main.tf` - The main Terraform configuration file defining the AWS provider and the EC2 resource.
- `outputs.tf` - The output configuration file that displays the EC2 instance ID and public IP after deployment.

## Getting Started

Follow these steps to use the Terraform scripts:

### Step 1: Initialize Terraform

Run the following command to initialize the Terraform directory, which will download the required providers.

    terraform init

### Step 2: Plan the Deployment

Execute the following command to have Terraform perform a dry run that shows which actions will be taken based on the current state of the system and the configuration defined.

    terraform plan

Carefully review the proposed actions to ensure they are as expected.

### Step 3: Apply the Configuration

To create the actual resources in AWS, run:

    terraform apply

You will be prompted to review the planned actions and confirm the deployment. Type `yes` to proceed.

### Step 4: Access Outputs

After the `apply` command completes successfully, Terraform will output the EC2 instance ID and public IP address. You can use these details to connect to your instance or for further configurations.

### Step 5: Clean Up

When you no longer need the EC2 instance and wish to avoid further charges, destroy the infrastructure with:

    terraform destroy

You will need to confirm the destruction by typing `yes` when prompted.

## Important Notes

- Replace the placeholder `ami` in `main.tf` with a valid AMI ID for your AWS region.
- Always check the AWS pricing details to understand the costs associated with the resources being used. Use the [AWS Pricing Calculator](https://calculator.aws/#/) for an estimate.
- Ensure that your AWS credentials are securely managed and are never exposed in your Terraform configuration files.

## Costs

Please note that using AWS resources may incur costs. Once you have finished with the deployed resources, ensure you run `terraform destroy` to remove everything and prevent any further charges.
