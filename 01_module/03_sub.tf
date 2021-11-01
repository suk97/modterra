# 가용영역 a의 Public Subnet
resource "aws_subnet" "suk_puba" {
  vpc_id            = aws_vpc.suk_vpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "suk-puba"
  }
}

# 가용영역 a의 Private Subnet
resource "aws_subnet" "suk_pria" {
  vpc_id            = aws_vpc.suk_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "suk-pria"
  }
}

# 가용영역 c의 Public Subnet
resource "aws_subnet" "suk_pubc" {
  vpc_id            = aws_vpc.suk_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "suk-pubc"
  }
}

# 가용영역 c의 Private Subnet
resource "aws_subnet" "suk_pric" {
  vpc_id            = aws_vpc.suk_vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "suk-pric"
  }
}
  resource "aws_subnet" "suk_pridba" {
  vpc_id            = aws_vpc.suk_vpc.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "suk-pridba"
  }
}
resource "aws_subnet" "suk_pridbc" {
  vpc_id            = aws_vpc.suk_vpc.id
  cidr_block        = "10.0.5.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "suk-pridbc"
  }
}