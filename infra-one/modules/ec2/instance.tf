
resource "aws_instance" "jorgevs-server" {
  ami = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"

  tags = {
    Name = "jorgevs-${var.env}"
  }
}