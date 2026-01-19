output "vpc-cni_id" {
  description = "EKS AddOn VPC CNI ID number"
  value       = aws_eks_addon.vpc-cni.id
}

output "vpc-cni_arn" {
  description = "EKS AddOn VPC CNI ARN name"
  value       = aws_eks_addon.vpc-cni.arn
}

output "kube-proxy_id" {
  description = "EKS AddOn Kube Proxy ID number"
  value       = aws_eks_addon.kube-proxy.id
}

output "kube-proxy_arn" {
  description = "EKS AddOn Kube Proxy ARN name"
  value       = aws_eks_addon.kube-proxy.arn
}

output "coredns_id" {
  description = "EKS AddOn CoreDns ID number"
  value       = aws_eks_addon.coredns.id
}

output "coredns_arn" {
  description = "EKS AddOn CoreDns ARN name"
  value       = aws_eks_addon.coredns.arn
}
