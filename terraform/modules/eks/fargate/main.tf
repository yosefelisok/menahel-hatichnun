resource "aws_eks_fargate_profile" "this" {
  cluster_name         = var.cluster_name
  fargate_profile_name = var.fargate_profile_name

  pod_execution_role_arn = aws_iam_role.fargate_pod_execution_role.arn
  subnet_ids            = var.subnet_ids

  # Selector for multiple namespaces
  dynamic "selector" {
    for_each = var.namespaces
    content {
      namespace = selector.value
    }
  }
}

resource "aws_iam_role" "fargate_pod_execution_role" {
  name = "fargate-pod-execution-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action    = "sts:AssumeRole"
        Principal = {
          Service = [
            "eks-fargate.amazonaws.com", 
            "eks-fargate-pods.amazonaws.com"
          ]
        }
        Effect    = "Allow"
      }
    ]
  })
}

resource "aws_iam_policy" "fargate_policy" {
  name        = "fargate-policy"
  description = "Policy for Fargate pod execution role to allow required actions"
  
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = [
          "logs:*",
          "s3:GetObject"
        ]
        Resource = "*"
      },
      {
        Effect   = "Allow"
        Action   = [
          "eks:DescribeCluster"
        ]
        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "fargate_role_policy_attachment" {
  role       = aws_iam_role.fargate_pod_execution_role.name
  policy_arn = aws_iam_policy.fargate_policy.arn
}
