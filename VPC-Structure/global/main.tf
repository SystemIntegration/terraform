/*
  File: main.tf
  Author: BMV Systemintegration Pvt Ltd.
  Date: December 21, 2023
  Description: This Terraform script Install all child module which is present in Global module.
*/


module "SG" {
  source = "./Security-group"
  vpc-id-for-security-1 = var.vpc-id
}