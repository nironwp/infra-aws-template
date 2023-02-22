variable "instance_ami" {
  type    = string
}

variable "instance_type" {
  type    = string
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