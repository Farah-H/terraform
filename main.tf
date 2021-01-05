# which cloud provider required
# aws as we have out AMIs on aws

provider "aws" {
    region = "eu-west-1"
}

resource "aws_instance" "nodejs_instance"{
    ami = "ami-02302a67c3cb78884"
    instance_type = "t2.micro"
    associate_public_ip_address = true
    tags = {
        Name = "eng74_farah_nodeapp"
    }
}