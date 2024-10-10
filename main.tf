terraform {
  backend "s3" {
    bucket         = "mybackbucket11"  # Replace with your actual S3 bucket name
    key            = "terraform.tfstate"
    region         = "ap-south-1"
  }
}
 
provider "aws" {
  region = "ap-south-1"
}
 
resource "aws_s3_bucket" "example" {
  bucket = "mybucketaccopa"
 
  tags = {
    Name        = "Department"
    Environment = "DevOps"
  }
}
