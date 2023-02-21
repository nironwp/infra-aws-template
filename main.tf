module "vpc" {
  source   = "./models/aws_vpc"
  vpc_cidr = var.vpc_cidr
  vpc_tag  = var.vpc_tag
}

module "subnet" {
  source                   = "./models/aws_subnet"
  subnet_availability_zone = var.subnet_availability_zone
  vpc_id                   = module.vpc.vpc_id
  subnet_cidr              = var.subnet_cidr
}

module "security_group" {
  source  = "./models/aws_sg"
  sg_name = var.sg_name
  vpc_id  = module.vpc.vpc_id
  sg_cidr = module.vpc.vpc_cidr
}

module "network_interface" {
  source      = "./models/aws_nic"
  nic_tags    = var.nic_tags
  subnet_id   = module.subnet.subnet_id
  private_ips = var.private_ips
}

module "aws_instance" {
  source        = "./models/aws_instance"
  instance_ami  = var.instance_ami
  instance_tags = var.instance_tags
  instance_type = var.instance_type
  device_index  = var.device_index
  nic_id        = module.network_interface.nic_id
}

