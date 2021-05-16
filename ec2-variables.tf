variable "instance_type" {
  type    = string
  default = "t3.micro"
}
variable "volume_size" {
  type    = number
  default = 30
}
variable "iops" {
  type    = number
  default = 3000
}

variable "throughput" {
  type    = number
  default = 125
}

variable "name" {
  type    = string
  default = "sonar"
}

variable "volume_type" {
  type    = string
  default = "gp3"
}
