resource "aws_eip" "sonar-eip" {
  vpc = true
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.sonar.id
  allocation_id = aws_eip.sonar-eip.id
}
