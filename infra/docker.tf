# Pulls the image
resource "docker_registry_image" "example" {
  name = "${aws_ecr_repository.example.repository_url}:${var.docker_tag}"
  build {
    context = "../application"
  }
}