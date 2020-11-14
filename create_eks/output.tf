output "region" {
  description = "AWS region"
  value       = var.region
}

output "cluster_name" {
  description = "Kubernetes Cluster Name"
  value       = local.cluster_name
}

output "cluster_endpoint" {
  description = "Endpoint for EKS control plane."
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Security group ids attached to the cluster control plane."
  value       = module.eks.cluster_security_group_id
}

output "kubectl_config" {
  description = "kubectl config as generated by the module."
  value       = module.eks.kubeconfig
}

output "config_map_aws_auth" {
  description = "A kubernetes configuration to authenticate to this EKS cluster."
  value       = module.eks.config_map_aws_auth
}

output "vpc_name" {
  description = "VPC identifier"
  value       = module.vpc.name
}

output "private_subnet_ids" {
  description = "Identifiers list of private subnets"
  value       = module.vpc.private_subnets
}

output "public_subnet_ids" {
  description = "Identifiers list of private subnets"
  value       = module.vpc.public_subnets
}

output "availability_zones" {
  description = "list of availability zones used for create EKS"
  value       = module.vpc.azs
}

output "worker_iam_role_arn" {
  description = "default IAM role ARN for EKS worker groups"
  value       = module.eks.worker_iam_role_arn
}

output "worker_security_group_id" {
  description = "Security group ID attached to the EKS workers."
  value       = module.eks.worker_security_group_id
}

output "management_security_group" {
  description = "Security group create to access to SSH Port to the EKS workers"
  value       = aws_security_group.all_worker_mgmt.id
}