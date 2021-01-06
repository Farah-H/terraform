variable "region" {
  type = string
  default = "01000000-0000-4000-8000-000030080200"
}

variable "ami" {
  type = string
  default = "01000000-0000-4000-8000-000030080200"
}

variable "instance_type" {
  type = string
  default = "01000000-0000-4000-8000-000030080200"
}

variable "associate_public_ip_address" {
  default = true
}

variable "key_name" {
  type = string
  default = "eng74.farah.aws.key"
}