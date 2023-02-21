
variable "vpc_id" {
  type = string
}

variable "subnet_cidr" {
  type    = string
  default = "172.16.10.0/24"
}

variable "subnet_availability_zone" {
  type    = string
  default = "us-east-1a"
}

variable "subnet_tags" {
  type    = map(string)
  default = { Name : "tf-example" }
}
