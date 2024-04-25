#provider "aws" {
#  region = "us-east-1"  # Change the region if needed
#}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.18.0"
    }
  }

  backend "s3" {
    bucket         	   = "terraform-github-actions-demo-8973453"
    key              	 = "state/terraform.tfstate"
    region         	   = "us-east-1"
    encrypt        	   = true
    dynamodb_table     = "terraform-github-actions-db"
  }
}


resource "aws_instance" "example" {
  ami           = "ami-0f496107db66676ff"  # Specify your desired AMI ID
  instance_type = "t2.micro"                # Specify your desired instance type
  
  tags = {
    Name = "ExampleInstance1"  # Name tag for the instance
  }
}
