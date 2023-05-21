provider "aws" {
  region  = "ap-south-1"
  access_key = "aws_key" # to replace with user key
  secret_key = "aws_secret_key" # to replace with user secrect key
} 

resource "aws_instance" "tharun" {
  ami                    = "ami-07d3a50bd29811cd1"
  instance_type          = "t2.micro"
  key_name               = "training0304-keypair"
  vpc_security_group_ids = ["sg-0f557f0fa4b8a894d"]
  subnet_id              = "subnet-0432158d410de5815"

  tags = {
    
    Name        = "EC2"
    Environment = "Production"
  }
}
