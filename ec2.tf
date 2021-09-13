
data "aws_ami" "amazon_linux_2" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }

  owners = ["amazon"]
}

resource "aws_instance" "php_hello_world" {
  ami           = data.aws_ami.amazon_linux_2.id
  instance_type = var.instance_type

  vpc_security_group_ids = [
    aws_security_group.http_traffic.id,
    aws_security_group.outbound_traffic.id
  ]

  monitoring = false

  user_data = file("user-data.sh")

  tags = var.tags
}
