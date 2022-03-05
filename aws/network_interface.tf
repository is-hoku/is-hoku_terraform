resource "aws_network_interface" "public_0" {
  subnet_id   = aws_subnet.public_0.id
  private_ips = ["10.0.1.100"]
}

resource "aws_network_interface" "public_1" {
  subnet_id   = aws_subnet.public_1.id
  private_ips = ["10.0.2.100"]
}

resource "aws_network_interface" "private_0" {
  subnet_id   = aws_subnet.private_0.id
  private_ips = ["10.0.65.100"]
}

resource "aws_network_interface" "private_1" {
  subnet_id   = aws_subnet.private_1.id
  private_ips = ["10.0.66.100"]
}
