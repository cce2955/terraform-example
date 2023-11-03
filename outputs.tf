# Output configuration
# The output values are what Terraform can return to the user after running "apply".
# These are especially useful for extracting important information like IP addresses,
# resource IDs, etc.

# Instance ID - Outputs the unique identifier of the EC2 instance.
output "instance_id" {
  value = aws_instance.example.id
}

# Instance Public IP - Outputs the public IP address assigned to the EC2 instance.
output "instance_public_ip" {
  value = aws_instance.example.public_ip
}
