

resource "aws_nat_gateway" "my_ng_1" {
  allocation_id = aws_eip.my_nat1.id

  subnet_id = aws_subnet.my_route_public1.id
  tags = {
    Name = "NAT 1"
  }
}

resource "aws_nat_gateway" "my_ng_2" {
  allocation_id = aws_eip.my_nat2.id

  subnet_id = aws_subnet.my_route_public2.id
  tags = {
    Name = "NAT 2"
  }
}
