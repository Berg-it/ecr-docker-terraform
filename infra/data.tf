#used in order to create aws_ecr_url
data "aws_caller_identity" "current_account" {}

#The ECR Authorization Token data source allows the authorization token, proxy endpoint, token expiration date, user name and password to be retrieved for an ECR repository.
data "aws_ecr_authorization_token" "ecr_token" {}