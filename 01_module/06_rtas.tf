resource "aws_route_table_association" "suk_rtas_a" {
  subnet_id = aws_subnet.suk_puba.id
  route_table_id = aws_route_table.suk_rt.id
}

resource "aws_route_table_association" "suk_rtas_c" {
  subnet_id = aws_subnet.suk_pubc.id
  route_table_id = aws_route_table.suk_rt.id
}