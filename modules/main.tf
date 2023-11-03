# Define the AWS IAM role
resource "aws_iam_role" "iam_role" {
  name = var.role_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = var.assume_role_principal_services
        },
      },
    ],
  })
}

# Dynamic inline policy attached to the IAM role
resource "aws_iam_role_policy" "iam_policy" {
  name   = "${var.role_name}-policy"
  role   = aws_iam_role.iam_role.id

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      for policy in var.policies : {
        Action   = policy.actions
        Effect   = policy.effect
        Resource = policy.resources
      }
    ],
  })
}
