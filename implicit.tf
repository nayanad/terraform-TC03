provider "aws" {
    region = "eu-west-1"
}

resource "aws_eip" "lb"{
    domain = "vpc"
    instance = aws_instance.my_ec2.id
}

resource "aws_instance" "my_ec2" {
    ami = "ami-03400c3b73b5086e9"
    instance_type = "t2.micro"
}
