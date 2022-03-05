module "http_sg" {
  source      = "./modules/security_group"
  name        = "http-sg"
  vpc_id      = aws_vpc.is-hoku.id
  port        = 80
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}

module "https_sg" {
  source      = "./modules/security_group"
  name        = "https-sg"
  vpc_id      = aws_vpc.is-hoku.id
  port        = 443
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}

module "http_redirect_sg" {
  source      = "./modules/security_group"
  name        = "http-redirect-sg"
  vpc_id      = aws_vpc.is-hoku.id
  port        = 8080
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}

module "ssh_sg" {
  source      = "./modules/security_group"
  name        = "ssh-sg"
  vpc_id      = aws_vpc.is-hoku.id
  port        = 22
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}
