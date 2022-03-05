output "iam_role_arn" {
  value       = aws_iam_role.default.arn
  description = "IAM role (ARN: Amazon Resource Name format)"
}

output "iam_role_name" {
  value       = aws_iam_role.default.name
  description = "Name of IAM role"
}
