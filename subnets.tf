resource "aws_subnet" "subnet" {
  vpc_id                  = aws_vpc.sonar.id
  count                   = length(var.subnet-cidr)
  cidr_block              = var.subnet-cidr[count.index]
  availability_zone       = var.az[count.index]
  map_public_ip_on_launch = true
  tags = {
    Name = "subnet ${count.index + 1}"
  }
}
