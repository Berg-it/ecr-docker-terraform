terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.16.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "3.0"
    }

  }
}

provider "aws" {
  region = var.region
}

provider "docker" {
  #condig cred here
  registry_auth {
    address  = local.aws_ecr_url
    username = data.aws_ecr_authorization_token.ecr_token.user_name
    password = data.aws_ecr_authorization_token.ecr_token.password
  }
}