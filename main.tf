module "test-vpc" {
  source = "./modules/networking"

  region               = "us-east-2"
  vpc_cidr             = "10.1.0.0/16"
  environment          = "test"
  public_subnets_cidr  = ["10.1.16.0/20"]
  public_availability_zones   = ["us-east-2a"]
  private_subnets_cidr = ["10.1.32.0/20", "10.1.48.0/20"]
  private_availability_zones   = ["us-east-2b", "us-east-2c"]
}

module "dev-vpc" {
  source = "./modules/networking"

  region               = "us-east-2"
  vpc_cidr             = "10.2.0.0/16"
  environment          = "dev"
  public_subnets_cidr  = ["10.2.16.0/20"]
  public_availability_zones   = ["us-east-2a"]
  private_subnets_cidr = ["10.2.32.0/20", "10.2.48.0/20"]
  private_availability_zones   = ["us-east-2b", "us-east-2c"]
}


