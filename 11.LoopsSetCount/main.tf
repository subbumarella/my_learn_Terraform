data "aws_ami" "ami_ex" {
    owners=["973714476881"]
    most_recent=true
    name_regex="Centos-8-DevOps-Practice"
}

variable "user_names"{
    description="IAM user names"
    type=set(string)
    default=["user5","user6","user7"]
}
#converting set to list
locals {
    my_list=tolist(var.user_names)
}

resource "aws_iam_user" "ex"{
   count=length(local.my_list)
   name=local.my_list[count.index]
}
