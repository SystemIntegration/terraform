output "server-id" {
  value = aws_instance.ec2.id
}
output "Pub-ip" {
  value = aws_instance.ec2.public_ip
}