# Terraform IAM Role Module

This repository contains a Terraform module for creating an AWS IAM Role with a dynamic inline policy.

## Structure

- `main.tf`: Main Terraform configuration file for the module.
- `variables.tf`: Variable definitions for the module.
- `outputs.tf`: Output definitions that the module will provide after creation.

## Usage

To use this module in your Terraform configuration, follow these steps:

1. Create a directory for your Terraform configuration if you haven't already.
2. Create a `main.tf` file in your root module directory.
3. Define a module block that calls the IAM role module:

    ```
    module "iam_role_example" {
      source = "./modules/iam_role"

      role_name = "example_role"
      assume_role_principal_services = ["ec2.amazonaws.com"]

      policies = [
        {
          actions   = ["s3:GetObject", "s3:ListBucket"],
          effect    = "Allow",
          resources = ["arn:aws:s3:::example-bucket", "arn:aws:s3:::example-bucket/*"]
        },
        # Add more policy blocks if needed
      ]
    }
    ```

4. Initialize Terraform in your project directory:

    `terraform init`

5. Plan the deployment to review the changes that will be applied:

    `terraform plan`

6. Apply the configuration to create the IAM role:

    `terraform apply`

7. To destroy the resources created by Terraform (when needed):

    `terraform destroy`

## Inputs

- `role_name`: The name of the IAM role. (Required)
- `assume_role_principal_services`: A list of AWS services that are allowed to assume this role. (Defaults to `["ec2.amazonaws.com"]`)
- `policies`: A list of policy objects that will be dynamically added to the IAM role. Each policy object can contain `actions`, `effect`, and `resources`. (Optional)

## Outputs

- `iam_role_arn`: The ARN of the IAM role created.
- `iam_role_name`: The name of the IAM role created.

## Notes

- Ensure your AWS provider is correctly configured with the necessary permissions to create IAM roles and policies.
- The provided `main.tf` example assumes the module is located in a subdirectory called `modules/iam_role`. Adjust the `source` path as necessary.
- Always review the Terraform plan output before applying to avoid unintended changes to your AWS infrastructure.

## License

This module is released under the MIT License. See the [LICENSE](LICENSE) file for details.
