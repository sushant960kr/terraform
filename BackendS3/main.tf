provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "sushant" {
  instance_type = "t2.micro"
  ami = "ami-0522ab6e1ddcc7055"
  subnet_id = "subnet-084bb455460c2bcd5"

}

resource "aws_s3_bucket" "s3_bucket" {
    bucket = "kanhiya-s3-demo-xyz"
  
}

resource "aws_dynamodb_table" "terraform_lock" {
    name = "terraform-lock"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"

    attribute {
      name = "LockID"
      type = "S"
    }
 
}