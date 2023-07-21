# Security Groups
module "sg" {
  source = "./modules/sg"
  vpc_id = module.vpc.vpc_id
}

module "vpc" {
  source = "./modules/vpc"
}


module "key-pair" {
  source       = "./modules/key-pair"
  key_name     = "ansible-test"
  key_filename = "ansible-test.pem"
}

# Elastic Cloud Compute
module "ec2" {
  source                 = "./modules/ec2"
  vpc_id                 = module.vpc.vpc_id
  public_subnet1         = module.vpc.public_subnet1
  private_subnet1        = module.vpc.private_subnet1
  key_pair               = module.key-pair.key_name
  web_security_groups_id = module.sg.web_security_groups_id
}