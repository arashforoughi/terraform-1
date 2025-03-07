provider "aws" {
  access_key = "AKIAUIPMXYIPZEOT2JX6"
  secret_key = "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"
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.19.0"

  name    = "my-vpc"
  cidr    = "10.0.0.0/16"

  tags = {
    Terraform   = "true"
    Environment = "staging"
  }
}
