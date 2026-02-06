resource "aws_iam_openid_connect_provider" "github" {
  url = "https://token.actions.githubusercontent.com"

  client_id_list = [
    "sts.amazonaws.com"
  ]

  thumbprint_list = [
    "6938fd4d98bab03faadb97b34396831e3780aea1"
  ]
}
resource "aws_iam_policy" "terraform_ci_policy" {
  name = "terraform-ci-policy"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "ec2:*",
          "elasticloadbalancing:*",
          "autoscaling:*",
          "iam:GetRole",
          "iam:PassRole",
          "s3:*",
          "dynamodb:*"
        ]
        Resource = "*"
      }
    ]
  })
}

