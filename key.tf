resource "aws_key_pair" "aws_key" {
  key_name   = "sonar"
  public_key = file("sshkey.pub")
}
