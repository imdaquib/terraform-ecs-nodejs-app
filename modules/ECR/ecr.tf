resource "aws_ecr_repository" "nodejs_ecr_repo" {
  name = var.ecr_repo_name
}