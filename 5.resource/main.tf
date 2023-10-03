resource "aws_instance" "awsex"{
    ami=data.aws_ami.amiex.id
    instance_type="t3.micro"
    tags={
        Name="HelloWorld"
    }
    
}

data "aws_ami" "amiex"{
    owners=["973714476881"]
    most_recent=true
    name_regex="Centos-8-DevOps-Practice"
}
