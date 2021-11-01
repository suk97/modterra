resource "aws_route_table" "suk_ngart_a" {
  vpc_id  = aws_vpc.suk_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.suk_nga_a.id
  }
  tags = {
    Name = "suk-nga-rta"
  }
}

resource "aws_route_table" "suk_ngart_c" {
  vpc_id  = aws_vpc.suk_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.suk_nga_c.id
  }
  tags = {
    Name = "suk-nga-rtc"
  }
}