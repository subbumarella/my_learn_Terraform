data "aws_ami" "ami_ex" {
    owners=["973714476881"]
    most_recent=true
    name_regex="Centos-8-DevOps-Practice"
}

variable "instances"{
    default={
        frontend={
            name="frontend"
            instance_type="t2.micro"
        }
        catalogue={
            name="catalogue"
        }
        cart={
            name="cart"
            instance_type="t3.micro"
        }
    }
}

resource "aws_instance" "ex"{
    for_each=var.instances
    ami=data.aws_ami.ami_ex.id
    instance_type=lookup(each.value,"instance_type","t3.nano")
    tags={
        Name=each.value["name"]
    }
}
