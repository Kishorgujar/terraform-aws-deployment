provider "aws" {
  region = "ap-south-1"  # Change to your desired region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "mybucketaccopa"
  tags = {
    Name  = "Department"
    Value = "AWS"
  }
}

