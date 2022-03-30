resource "aws_instance" "myec2" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"
  security_groups = [aws_security_group.Terraform_EC2_Security.name]
  key_name = ""

    tags = {
        Name = "Terraform_EC2"
        Department = "Cloud_DevOps"
    }
}

resource "aws_default_vpc" "main" {
  tags = {
    Name = "main"
  }
}
