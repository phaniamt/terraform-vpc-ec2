resource "aws_route_table" "sonar-route" {
  vpc_id = aws_vpc.sonar.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name = "sonar-rt"
  }
}
