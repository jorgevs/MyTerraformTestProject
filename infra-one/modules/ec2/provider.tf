terraform {
  required_providers {
    aws = {
      version = ">= 4.37.0"
    }
  }
}

data "aws_caller_identity" "current" {}
data "aws_region" "current" {}