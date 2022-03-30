resource "aws_security_group" "Terraform_EC2_Security" {
  name        = "Terraform_EC2_Security"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_default_vpc.main.id

  ingress {
    description      = "Inbound rules from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = [aws_default_vpc.main.cidr_block]
  }

    ingress {
    description      = "Inbound rules from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = [aws_default_vpc.main.cidr_block]
  }

    ingress {
    description      = "Inbound rules from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [aws_default_vpc.main.cidr_block]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Terraform_EC2_Security"
    instance_name = "Terraform_EC2_Instance"
  }
}