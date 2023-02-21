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

variable "nic_id" {
  type = string
}