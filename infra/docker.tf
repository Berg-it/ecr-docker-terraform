# Pulls the image
resource "docker_registry_image" "example" {
  name = "${aws_ecr_repository.example.repository_url}:latest"
  build {
    context = "../application"
  }
}