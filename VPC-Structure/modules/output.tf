output "vpc-id" {
  value = module.vpc.vpc-id
}
output "subnet-1-id" {
  value = module.vpc.subnet-1-id
}
output "subnet-2-id" {
  value = module.vpc.subnet-2-id
}
output "IG-id" {
  value = module.vpc.IG-id
}
output "instance-id" {
  value = module.ec2.server-id
}
output "public-ip" {
  value = module.ec2.Pub-ip
}