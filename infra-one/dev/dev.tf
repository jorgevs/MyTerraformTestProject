locals {
  env    = "dev"
  region = "us-east-1"
  name   = "jorgevs"
}

module "ec2" {
  source = "../modules/ec2"

  name            = local.name
  env             = local.env
  region          = local.region

  security_groups = ["sg-0f0da84e2ac4f6063", "sg-0379fdb50dedbbdb0", "sg-04d7ec7ebd911a132"]
  instance_type   = "t2.micro"
  vpc_id          = "vpc-024fb62582faa14fa"
  subnet          = "subnet-0c946ff90ba98c374"
  image_id        = "ami-053b0d53c279acc90"

  tags = {
    Environment = local.env
    Team        = local.name
  }
}