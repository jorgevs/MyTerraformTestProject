terraform {
  required_version = ">= 1.5.7"

  required_providers {
    aws = {
      version = ">= 4.37.0"
    }
  }

  backend "s3" {
    region         = "us-east-1"
    bucket         = "jorgevs-infra-tf-state-dev"
    key            = "infra/dev-us-east-1/terraform.tfstate"
    dynamodb_table = "jorgevs-infra-tf-state-lock-dev"
    encrypt        = "true"
  }
}
