terraform {
  backend "s3" {
    bucket         = "terraform-brk-demo-s3" # change this
    key            = "barkath/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "Backend-DDB"
  }
}
