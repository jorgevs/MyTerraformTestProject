locals {
  env    = "prod"
  region = "us-east-2"
  name   = "jorgevs"
}

module "ec2" {
  source = "../modules/ec2"

  name            = local.name
  env             = local.env
  region          = local.region

  security_groups = [""]
  instance_type   = "t2.micro"
  vpc_id          = ""
  subnet          = ""
  image_id        = "ami-053b0d53c279acc90"

  tags = {
    Environment = local.env
    Team        = local.name
  }
}