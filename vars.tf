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
  description = "The availability zones: us-east-1a, us-east-1b, us-east-1c, us-east-1d, us-east-1e, us-east-1f"
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
  type    = string
  default = "ami-0557a15b87f6559cf"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
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
