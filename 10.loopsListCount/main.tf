data "aws_ami" "ami_ex" {
    owners=["973714476881"]
    most_recent=true
    name_regex="Centos-8-DevOps-Practice"
}


variable "user_name" {
    description="IAM usernames"
    type=list(string)
    default=["user2","user3","user4"]
}

resource "aws_iam_user" "ex"    {
    count= length(var.user_name)
    name=var.user_name[count.index]
}
