provider "aws" {
    region = "eu-west-1"
}

resource "aws_instance" "app_instance"{
    ami = "ami-0651ff04b9b983c9f"
    instance_type = "t2.micro"
    associate_public_ip_address = true
    tags = {
        Name = "eng74_farah_app_terraform"
    }
    key_name = "eng74.farah.aws.key"    
}

resource "aws_instance" "mongodb_instance" {
  ami = "db_AMI"
  instance_type = "t2.micro"
  associate_public_ip_address = true
  tags = {
        Name = "eng74_farah_db_terraform"
    }
    key_name = "eng74.farah.aws.key"    
}