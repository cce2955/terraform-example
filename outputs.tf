# Outputs from your root module, including outputs from the IAM role module
output "iam_role_arn" {
  value = module.iam_role_example.iam_role_arn
}

output "iam_role_name" {
  value = module.iam_role_example.iam_role_name
}
