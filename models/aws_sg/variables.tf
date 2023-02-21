variable "vpc_id" {
  type = string
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

variable "sg_cidr" {
  type = string
}
