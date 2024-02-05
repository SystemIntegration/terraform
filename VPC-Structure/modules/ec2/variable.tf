variable "ami" {
    default = "Your AMI ID"
}
variable "inst-type" {
  default = "t2.micro"
}
variable "key-name" {
  default = "your_key"
}
variable "subn-1" {
  description = "value"
}

variable "security-group-1" {
  description = "Security group id for instance"
}