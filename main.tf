provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0c2b8ca1dad447f8a"  # Updated valid AMI ID
  instance_type = "t2.micro"
  count         = var.core_count
  tags = {
    Name = "Sumanth0660-ExampleInstance"
  }
}

