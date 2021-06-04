output "cluster_id" {
  description = "EKS cluster ID."
  value       = module.eks.cluster_id
}

output "cluster_endpoint" {
  description = "Endpoint for EKS control plane."
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Security group ids attached to the cluster control plane."
  value       = module.eks.cluster_security_group_id
}

output "vpc_id" {
  description = "VPC ID"
  value       = module.vpc.vpc_id
}

output "kubectl_config" {
  description = "kubectl config as generated by the module."
  value       = module.eks.kubeconfig
}

output "config_map_aws_auth" {
  description = "A kubernetes configuration to authenticate to this EKS cluster."
  value       = module.eks.config_map_aws_auth
}

output "region" {
  description = "AWS region"
  value       = var.aws_region
}

output "cluster_name" {
  description = "Kubernetes Cluster Name"
  value       = local.cluster_name
}

# output "tls_pem" {
#   description = "Kubernetes TLS Private Key"
#   value       = tls_private_key.ssh_key.private_key_pem
#   sensitive   = true
# }


output "tls_pub" {
  description = "Kubernetes TLS Public Key"
  value       = tls_private_key.ssh_key.public_key_openssh
}

output "db_connect_string" {
  description = "Postgresql database connection string"
  value       = "postgresql://${var.db_username}:${var.db_password}@${aws_rds_cluster.database.endpoint}:5432/${aws_rds_cluster.database.database_name}"
  sensitive   = true
}

output "db_postgres_username" {
  description = "Postgresql database username"
  value       = var.db_username
}

output "db_postgres_instance" {
  description = "Postgresql database username"
  value       = aws_rds_cluster.database.endpoint
}
output "db_postgres_name" {
  description = "Postgresql database name"
  value       = aws_rds_cluster.database.database_name
}
