resource "aws_instance" "web" {
  count         = 2
  ami           = var.ami_id
  #vpc_security_group_ids = var.security_group_ids
  instance_type = var.instance_type
  subnet_id     = var.subnet_id[0]
  key_name      = var.key_name

  tags = {
    Name = "web-server-${count.index + 1}"
  }
}
