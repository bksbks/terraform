provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"

  tags = {
    Name = "Development"
  }
}

resource "aws_s3_bucket" "terraform-backend" {
  bucket = "terraform-brk-demo-s3"

}

resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "Backend-DDB"
  billing_mode   = "PROVISIONED"
  read_capacity  = 2
  write_capacity = 2
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}  
