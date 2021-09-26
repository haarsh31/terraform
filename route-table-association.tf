
resource "aws_route_table_association" "my_route_public_1" {

  subnet_id = aws_subnet.my_route_public1.id

  route_table_id = aws_route_table.my_route_table_public.id
}

resource "aws_route_table_association" "my_route_public_2" {
  subnet_id = aws_subnet.my_route_public2.id

  route_table_id = aws_route_table.my_route_table_public.id
}

resource "aws_route_table_association" "my_route_private_1" {

  subnet_id = aws_subnet.my_route_private1.id

  route_table_id = aws_route_table.my_route_private1.id
}

resource "aws_route_table_association" "my_route_private_2" {

  subnet_id = aws_subnet.my_route_private2.id

  route_table_id = aws_route_table.my_route_private_2.id
}
