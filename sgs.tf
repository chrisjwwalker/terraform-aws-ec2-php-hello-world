resource "aws_security_group" "http_traffic" {
  name        = "http-traffic"
  description = "Allow http traffic on port 80"

  ingress {
    description = "http"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = var.allowed_inbound_cidr_blocks
  }

  tags = var.tags
}

resource "aws_security_group" "outbound_traffic" {
  name        = "outbound-traffic"
  description = "Allow all outbound traffic from EC2 instance"

  egress {
    description = "general outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = var.tags
}
