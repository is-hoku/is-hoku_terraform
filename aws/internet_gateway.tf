resource "aws_internet_gateway" "is-hoku" {
  vpc_id = aws_vpc.is-hoku.id
}
