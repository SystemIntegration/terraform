module "vpc" {
  source = "./vpc"
}
module "ec2" {
  source = "./ec2"
  security-group-1 = var.sg-id
  subn-1 = module.vpc.subnet-1-id
  depends_on = [ module.vpc ]
}

module "s3" {
  source = "./s3"
}