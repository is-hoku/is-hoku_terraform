resource "aws_vpc" "is-hoku" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "is-hoku"
  }
}
