output "vpc-id" {
  value = module.module.vpc-id
}
output "subnet-1-id" {
  value = module.module.subnet-1-id
}
output "subnet-2-id" {
  value = module.module.subnet-2-id
}
output "IG-id" {
  value = module.module.IG-id
}
output "Sg-id" {
  value = module.global.SG-id
}
output "Public--ip" {
  value = module.module.public-ip
}