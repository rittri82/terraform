# Creating EC2 Resource

resource "aws_instance" "myec2vm" {
  ami = "ami-082105f875acab993"
  instance_type = "t2.micro"
  user_data = file("${path.module}/app1-install.sh")
  tags = {
      Name = "EC2 Demo"
  }
}