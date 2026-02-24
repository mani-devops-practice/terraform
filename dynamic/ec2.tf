resource "aws_security_group" "allow_tls" {
  name        = "allow-all-terraform" # this is for AWS account
  description = "Allow TLS inbound traffic and all outbound traffic"

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  
  # Here ingress is going to be a special variable which is going to be created by terraform and we can use it in content block
  dynamic "ingress" {
    for_each = var.ingress_rules
    content {
      from_port        = ingress.value.from_port
      to_port          = ingress.value.to_port
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      description =    ingress.value.description
    
  }
}
  tags = {
    Name = "allow-all-terraform"
  }
}
