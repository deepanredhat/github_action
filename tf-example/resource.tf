resource "aws_instance" "web" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids
  key_name               = var.key_name
  root_block_device {
    volume_size = var.volume_size
  }

  tags = {
    Name = var.Name
  }
}