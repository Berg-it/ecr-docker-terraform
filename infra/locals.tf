locals {


  aws_ecr_url = "${data.aws_caller_identity.current_account.account_id}.dkr.ecr.${var.region}.amazonaws.com"


}