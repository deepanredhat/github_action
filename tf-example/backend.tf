terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "rgas-dev-red-sun"
    dynamodb_table = "dynamo-terraform-state-lock"
    key            = "terraform.tfstate"
    region         = "us-east-1"
  }
}