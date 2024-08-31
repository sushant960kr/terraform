

terraform {
  backend "s3" {
    bucket = "kanhiya-s3-demo-xyz"
    region = "ap-south-1"
    key = "kanhiya/terraform/.tfstate"
    dynamodb_table = "terraform_lock"
  
  }
}


