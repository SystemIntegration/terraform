/*
  File: main.tf
  Author: BMV Systemintegration Pvt Ltd.
  Date: December 21, 2023
  Description: This Terraform script deploys Security Group inside VPC infrastructure in AWS.
*/



resource "aws_security_group" "my-security-1" {
  name        = "my_security_group-1"
  description = "for connecting instance"
  vpc_id      = var.vpc-id-for-security-1

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
