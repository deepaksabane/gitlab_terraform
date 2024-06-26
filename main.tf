module "vpc" {
  source = "./vpc"

  main_cidr            = var.main_cidr
  public_subnet1a_cidr = var.public_subnet1a_cidr
  public_subnet1b_cidr = var.public_subnet1b_cidr
  public_subnet1c_cidr = var.public_subnet1c_cidr
  private_subnet1a_cidr = var.private_subnet1a_cidr
  private_subnet1b_cidr = var.private_subnet1b_cidr
  private_subnet1c_cidr = var.private_subnet1c_cidr
}

module "ec2" {
  source = "./web"

  ami             = var.ami
  instance_type   = var.instance_type
  public_subnet1a = module.vpc.public_subnet1a
  security_groups = [module.vpc.security_groups]
}
