
resource "aws_vpc" "vpc" {
  cidr_block = "172.16.0.0/16"

  tags = var.vpc_tag
}

