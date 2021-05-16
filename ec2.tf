data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "sonar" {
  ami                     = data.aws_ami.ubuntu.id
  subnet_id               = aws_subnet.subnet.0.id
  instance_type           = var.instance_type
  key_name                = aws_key_pair.aws_key.key_name
  disable_api_termination = "false"
  vpc_security_group_ids  = [aws_security_group.sg.id]
  # root disk
  root_block_device {
    delete_on_termination = true
    iops                  = var.iops
    volume_size           = var.volume_size
    volume_type           = var.volume_type
    throughput            = var.throughput
    tags = {
      Name = var.name
    }
  }
  tags = {
    Name = var.name
  }
}
