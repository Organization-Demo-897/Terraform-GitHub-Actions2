provider "aws" {
  region = "us-east-1"  # Change the region if needed
}


resource "aws_instance" "example" {
  ami           = "ami-0f496107db66676ff"  # Specify your desired AMI ID
  instance_type = "t2.micro"                # Specify your desired instance type
  
  tags = {
    Name = "ExampleInstance1"  # Name tag for the instance
  }
}
