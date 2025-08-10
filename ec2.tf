resource "aws_instance" "myec2" {
  ami = "ami-03400c3b73b5086e9"
  instance_type = "t2.micro" 
}
