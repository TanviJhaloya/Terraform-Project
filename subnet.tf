resource "aws_subnet" "publicsubnets" { # Creating Public Subnets
  vpc_id            = "vpc-0fe9f189477964325"
  cidr_block        = "172.31.48.0/20"
  availability_zone = "ap-south-1a"
  tags = {
    Name = "public_subnet"
  }
}

resource "aws_subnet" "privatesubnets" { # Creating private Subnets
  vpc_id            = "vpc-0fe9f189477964325"
  cidr_block        = "172.31.64.0/20"
  availability_zone = "ap-south-1a"
  tags = {
    Name = "private_subnet"
  }
}
