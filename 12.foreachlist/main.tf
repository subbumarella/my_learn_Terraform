data "aws_ami" "ami_ex" {
    owners=["973714476881"]
    most_recent=true
    name_regex="Centos-8-DevOps-Practice"
}

variable "user_names"{
    description="IAM user names"
    type=list(string)
    default=["user8","user9","user10"]
}

resource "aws_iam_user" "ex"{
    for_each=toset(var.user_names)
    name=each.value
}