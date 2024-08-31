provider "aws" {
    region = "ap-south-1"
  
}
variable "ami" {
  description = "this is AMI for the instance"
}
variable "instance_type" {
  description = "this is the instance type"
  
}
resource "aws_instance" "example" {
  ami = var.ami
  instance_type = var.instance_type
}