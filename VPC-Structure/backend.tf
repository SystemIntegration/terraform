terraform {
  backend "s3" {
    bucket = "Your Bucket Name Here"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}