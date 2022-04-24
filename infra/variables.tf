variable "region" {
  description = "AWS region to create resources in"
  type        = string
  default     = "eu-west-3"
}

variable "docker_tag" {
  description = "tag of the docker image"
  type        = string
  default     = "latest"
}

variable "image_name" {
  description = "the image name"
  type        = string
  default     = "my-image"
}