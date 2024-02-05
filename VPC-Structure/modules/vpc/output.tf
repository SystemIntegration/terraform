output "vpc-id" {
  value = aws_vpc.vpc.id
}

output "subnet-1-id" {
  value = aws_subnet.Public-sub-1.id
  
}
output "subnet-2-id" {
  value = aws_subnet.Public-sub-2.id
}
output "IG-id" {
  value = aws_internet_gateway.IGW.id
}
