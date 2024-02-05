module "global" {
  source = "./global"
  vpc-id = module.module.vpc-id
}

module "module" {
  source = "./modules"
  sg-id = module.global.SG-id
}

module "s3" {
  source = "./modules/s3"
}