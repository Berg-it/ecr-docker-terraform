resource "aws_ecr_repository" "example" {
  name = var.image_name
}