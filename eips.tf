
# Resource: aws_eip
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip

resource "aws_eip" "my_nat1" {
  # EIP may require IGW to exist prior to association. 
  # Use depends_on to set an explicit dependency on the IGW.
  depends_on = [aws_internet_gateway.my_ig]
}

resource "aws_eip" "my_nat2" {
  # EIP may require IGW to exist prior to association. 
  # Use depends_on to set an explicit dependency on the IGW.
  depends_on = [aws_internet_gateway.my_ig]
}
