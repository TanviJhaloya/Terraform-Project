
resource "aws_instance" "project-1" {
  ami                         = "ami-08df646e18b182346"
  instance_type               = "t2.micro"
  security_groups             = ["sg-0c89c9b6e9c60ea2e"]
  subnet_id                   = "subnet-0c0e4ee35be4bb853"
  associate_public_ip_address = true
  tags = {
    Name = "my-instance-public"
  }
  user_data = file("script.sh")
}

# instance for private subnet

resource "aws_instance" "project-2" {
  ami             = "ami-08df646e18b182346"
  instance_type   = "t2.micro"
  security_groups = ["sg-0c89c9b6e9c60ea2e"]
  subnet_id       = "subnet-0ea5eb09cc4c8800e"
  tags = {
    Name = "my-instance-private"
  }
}