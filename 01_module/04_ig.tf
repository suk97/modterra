resource "aws_internet_gateway" "suk_ig" {
  vpc_id = aws_vpc.suk_vpc.id

  tags = {
    Name = "suk-ig"
  }
}