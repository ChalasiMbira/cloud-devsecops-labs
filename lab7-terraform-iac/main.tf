provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "devsecops_lab" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  tags = {
    Name = "DevSecOps-Lab7"
  }
}
