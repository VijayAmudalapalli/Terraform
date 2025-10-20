variable "ami_id" {
  type        = string
  default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
  type = string
  default = "t3.micro"
}

variable "ec2_tags" {
  type = map
  default ={
    Name = "terraform_demo"
    Terraform = "true"
  }
}

variable "sg_key" {
  type = string
  default = "allow_all"
}

#ingress
variable "ingress_from_port" {
  default = 0
}

variable "ingress_to_port" {
  default = 0
}

variable "ingress_protocol" {
  type = string
  default = "-1"
}

variable "ingress_cidr" {
  type = list
  default = ["0.0.0.0/0"]
}

#egress
variable "egress_from_port" {
  default = 0
}

variable "egress_to_port" {
  default = 0
}

variable "egress_protocol" {
  type = string
  default = "-1"
}

variable "egress_cidr" {
  type = list
  default = ["0.0.0.0/0"]
}