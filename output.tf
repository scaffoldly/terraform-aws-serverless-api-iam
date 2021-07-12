output "deployer_access_key" {
  value       = aws_iam_access_key.access_key.id
  description = "The AWS Access Key that can be used for deploys"
}

output "deployer_secret_key" {
  value       = aws_iam_access_key.access_key.secret
  sensitive   = true
  description = "The AWS Secret Key that can be used for deploys"
}
