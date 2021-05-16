variable "region" {
  description = "AWS Deployment region.."
  default     = "ap-south-1"
}
variable "vpc-name" {
  default = "sonarqube"
}
variable "vpc-cidr" {
  type    = string
  default = "172.31.0.0/16"
}
variable "subnet-cidr" {
  type    = list(string)
  default = ["172.31.1.0/24", "172.31.2.0/24", "172.31.3.0/24"]
}
variable "az" {
  type    = list(string)
  default = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
}


variable "sg_ingress_rules" {
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_block  = string
    description = string
  }))
  default = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_block  = "0.0.0.0/0"
      description = "ssh"
    },
    {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_block  = "0.0.0.0/0"
      description = "http"
    },
    {
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      cidr_block  = "0.0.0.0/0"
      description = "https"
    },
  ]
}
