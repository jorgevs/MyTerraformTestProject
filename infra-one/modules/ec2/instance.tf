resource "aws_instance" "ec2-server" {
  ami           = var.image_id
  instance_type = var.instance_type

  vpc_security_group_ids  = var.security_groups
  subnet_id               = var.subnet
  disable_api_termination = true

  key_name = aws_key_pair.generated_key.key_name

  #ebs_optimized = true

  root_block_device {
    delete_on_termination = true
    encrypted             = false
    tags                  = var.tags
    volume_size           = 20
  }

  tags = merge(
    var.tags,
    {
      Name = "${var.name}-server-${var.env}"
    }
  )
}
