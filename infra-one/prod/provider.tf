terraform {
  required_version = ">= 1.5.7"

  required_providers {
    aws = {
      version = ">= 4.37.0"
    }
  }

  backend "s3" {
    region         = "us-east-2"
    bucket         = "jorgevs-infra-tf-state-prod"
    key            = "infra/prod-us-east-2/terraform.tfstate"
    dynamodb_table = "jorgevs-infra-tf-state-lock-prod"
    encrypt        = "true"
  }
}
