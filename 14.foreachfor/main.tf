data "aws_ami" "ami_ex" {
    owners=["973714476881"]
    most_recent=true
    name_regex="Centos-8-DevOps-Practice"
}

variable "userna_mes"{
    description="IAM user"
    type=list(string)
    default=["frontend","mongodb","catalogue"]
}

resource "aws_instance" "ex"{
    count=length(var.user_names)    
    ami=data.aws_ami.ami_ex.id
    instance_type="t2.micro"    
    tags={
        Name=var.user_names[count.index] 

    }    
}
