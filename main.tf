provider "aws" {
region = "eu-north-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-070fe338fb2265e00"
instance_type = "t3.medium"
key_name = "sas"
vpc_security_group_ids = ["sg-04708c3fc48d8e967"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "nexus", "tomcat", "monitoring"]
}
