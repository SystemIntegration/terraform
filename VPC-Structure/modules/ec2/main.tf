/*
  File: main.tf
  Author: BMV Systemintegration Pvt Ltd.
  Date: December 21, 2023
  Description: This Terraform script deploys EC2 instance in AWS infrastructure.
*/


resource "aws_instance" "ec2" {
  ami = var.ami
  instance_type = var.inst-type
  key_name = var.key-name
  subnet_id = var.subn-1
  associate_public_ip_address = true
  vpc_security_group_ids      = [var.security-group-1]

}