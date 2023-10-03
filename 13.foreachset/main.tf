data "aws_ami" "ami_ex" {
    owners=["973714476881"]
    most_recent=true
    name_regex="Centos-8-DevOps-Practice"
}

variable "instances"{
    description="IAM user names"
    type=set(string)
    default =["frontend","mangodb","catalogue"]
}

resource "aws_instance" "ex"{
    for_each=var.instances
    name=each.value
}

