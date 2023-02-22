variable "environment" {
  default     = "developing"
  description = "The stating of the infra: development or production"
  type        = string
}

variable "vpc_cidr" {
  type    = list(string)
  default = ["172.16.0.0/16"]
}

variable "vpc_tag" {
  type = map(any)
  default = {
    "Name" = "tf-template"
  }
}

variable "subnet_cidr" {
  type    = string
  default = "172.16.10.0/24"
}

variable "subnet_availability_zone" {
  type        = string
  description = "The availability zones: eu-west-1a, eu-west-1b, eu-west-1c"
}

variable "subnet_name" {
  type    = string
  default = "tf-example"
}

variable "sg_tags" {
  default = {
    "Name" = "allow_tls"
  }
}

variable "sg_name" {
  type    = string
  default = "allow_tls"
}

variable "sg_description" {
  type    = string
  default = "Allow TLS inbound traffic"
}

variable "private_ips" {
  type    = list(string)
  default = ["172.16.10.100"]
}

variable "nic_tags" {
  type = map(any)
  default = {
    "Name" = "primary_network_interface"
  }
}

variable "instance_ami" {
  description = "The normal instances ami"
  type        = string
}

variable "instance_type" {
  description = "The normal instances type, to developing is recomended ${"t2.micro"}"
  type        = string
}


variable "device_index" {
  type    = number
  default = 0
}

variable "instance_tags" {
  type = map(string)
  default = {
    "Name" = "environment"
  }
}
