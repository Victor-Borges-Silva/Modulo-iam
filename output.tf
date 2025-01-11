output "iam_role_arn_ec2" {
  value = aws_iam_role.Inicia_Desliga_EC2.arn
}

output "iam_role_arn_backup" {
  value = aws_iam_role.role_backup.arn
}