# main.tf
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "demo" {
  ami       	 = "ami-0f496107db66676ff"
  instance_type = "t2.micro"
  tags = {
	Name = "DemoEC2Instance1"
  }
}
