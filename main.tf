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


