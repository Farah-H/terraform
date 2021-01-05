provider "aws" {
    region = "eu-west-1"
}

resource "aws_instance" "nodejs_db_instance"{
    ami = "ami-0cdf4cfcf91182fd8"
    instance_type = "t2.micro"
    associate_public_ip_address = true
    tags = {
        Name = "eng74_farah_db_terraform"
    }
    key_name = "eng74.farah.aws.key"    
}