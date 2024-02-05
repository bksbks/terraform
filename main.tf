provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_instance" {
    ami = var.ami_value
    instance_type = var.instance_type_value

}
output "public_ip" {
  description = "public_ip of instance"
  value       = aws_instance.my_instance.public_ip
}