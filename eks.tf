resource "aws_iam_role" "my_eks_cluster" {
  name = "my_eks_cluster_aquaSec"

  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}


resource "aws_iam_role_policy_attachment" "my_eks_cluster_policy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"


  role = aws_iam_role.my_eks_cluster.name
}

resource "aws_eks_cluster" "eks" {

  name = "my_eks_cluster_aquasec"

  role_arn = aws_iam_role.my_eks_cluster.arn
  version  = "1.21"

  vpc_config {
    endpoint_private_access = false
    endpoint_public_access  = true

    subnet_ids = [
      aws_subnet.my_route_public1.id,
      aws_subnet.my_route_public2.id,
      aws_subnet.my_route_private1.id,
      aws_subnet.my_route_private2.id
    ]
  }
  depends_on = [
    aws_iam_role_policy_attachment.my_eks_cluster_policy
  ]
}
