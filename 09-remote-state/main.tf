terraform {
  backend "s3" {
    bucket = "terraform-aws73"
    key = "aws/devops.tfstate"
    region = "us-east-1"
  }
}

output "demo" {
  value = "Hello World"
}