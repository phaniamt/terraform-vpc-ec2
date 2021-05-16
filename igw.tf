resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.sonar.id

  tags = {
    Name = "sonar-igw"
  }
}
