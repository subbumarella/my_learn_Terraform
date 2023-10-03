
variable "instance_type"{
    description="EC2 instance_type"
    type=string
    default="t2.micro"
}
variable "ami"{
    description="ami"
    default="ami-03265a0778a880afb"    
}
variable "tag_Name"{
    default="sample instance"
}

resource "aws_instance" "ex"{
    ami=var.ami
    instance_type=var.instance_type
    tags={
        Name=var.tag_Name
    }
} 

output "Ip_Address"{
    value="The ip Address is - ${aws_instance.ex.public_ip}"
}

