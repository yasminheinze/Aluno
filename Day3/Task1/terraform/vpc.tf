module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.12.0"

  name = "simple-example"

  cidr = "10.0.0.0/16"

  azs             = ["us-east-1"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]

  enable_nat_gateway = true
  single_nat_gateway = true

  tags = {
    name = "VPC Yasmin Desenvolve"
  }
}


resource "aws_security_group" "liberaHTTP" {
  name        = "liberaHTTP"
  description = "liberaHTTP"

  ingress {
    description      = "libera443"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "libera80"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "Yasmin Desenvolve"
  }
}