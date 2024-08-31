provider "aws" {
  region = "ap-south-1"
}

import {
  id = "i-0f9ff976baafb94a7"

  to = aws_instance.example
}