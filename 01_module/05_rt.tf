resource "aws_route_table" "suk_rt" {
  vpc_id = aws_vpc.suk_vpc.id
  
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.suk_ig.id
    }
    tags = {
        Name = "suk-rt"
    }
}