provider "aws" {
    region = "ap-south-1"
  
}

module "ec2-instance" {
  source = "./module/ec2"
  ami_value = "ami-0522ab6e1ddcc7055"
  instance_type_value = "t2.micro"
  subnet_id_value = "subnet-04243679ef7fddefe"
}