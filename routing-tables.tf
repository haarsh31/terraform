resource "aws_route_table" "my_route_table_public" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_ig.id
  }

  tags = {
    Name = "public"
  }
}

resource "aws_route_table" "my_route_private1" {

  vpc_id = aws_vpc.my_vpc.id

  route {

    cidr_block = "0.0.0.0/0"

    nat_gateway_id = aws_nat_gateway.my_ng_1.id
  }

  tags = {
    Name = "my_route_private1"
  }
}

resource "aws_route_table" "my_route_private_2" {

  vpc_id = aws_vpc.my_vpc.id

  route {

    cidr_block = "0.0.0.0/0"


    nat_gateway_id = aws_nat_gateway.my_ng_2.id
  }


  tags = {
    Name = "my_route_private_2"
  }
}
