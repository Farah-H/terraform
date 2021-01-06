# Terraform 

## What is Terraform
- Terraform is an IAC orchestration tool - it allows you to create IAC for deployment on any cloud
- Terraform means 'transform the earth'
- It is a HashiCorp product

## Why Terraform?
- It helps you scale pu and down as per user demand 
### Best Usecases:
- It makes cloud independent - works with AWS, Acure, GCP and others 
**Other IAC Tools**:
- Orchestration with Terraform 
- from an AMI to EC2 with customised configuration


## What is difference between Terraform and Ansible?
Terraform is more for orchestration (NACLs, Subnets / SGs) whereas ansible is used for provisionining.

## Why not use AWS's 'Cloud Formation'? 
You cannot use cloud formation on another platform (non AWS) but Ansible can be used on any platform

## How does it fit in with Ansible and Packer?
![](https://media.discordapp.net/attachments/767793850529087489/795965337274417152/unknown.png)

### Language used is HCL similar to json in terms of syntax

# Steps:

1. create `main.tf` file and configure as follows:
```json
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
```
2. In terminal execute the command `terraform init`

```
resource "aws_instance" "mongodb_instance" {
  ami = "db_AMI"
  instance_type = "t2.micro"
  associate_public_ip_address = true
  tags = {
        Name = "eng74_farah_db_terraform"
    }
    key_name = "eng74.farah.aws.key"    
}
```