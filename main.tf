# Provider configuration
# This block configures the necessary provider(s) for Terraform.
# In this case, we're configuring the AWS provider to deploy
# resources in the "us-west-2" region.
provider "aws" {
  region = "us-west-2"
}

# Resource configuration
# This block defines an EC2 instance resource. The resource type is "aws_instance"
# and "example" is the name we've given this instance configuration within this Terraform script.
resource "aws_instance" "example" {
  # AMI ID - This should be updated to an appropriate AMI for your region.
  # You can find the AMI ID in the AWS Management Console under EC2.
  ami = "ami-0c55b159cbfafe1f0"

  # Instance Type - We're using "t2.micro" because it's eligible for the AWS free tier.
  instance_type = "t2.micro"

  # Tags - Tags are key-value pairs that you can assign to AWS resources.
  # Here we're assigning a Name tag to our instance for easier identification.
  tags = {
    Name = "ExampleInstance"
  }
}
