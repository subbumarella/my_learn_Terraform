data "aws_ami" "ami_example"{
    owners=["973714476881"]
    most_recent=true
    name_regex="Centos-8-DevOps-Practice"
}

resource "aws_instance" "aws_example"{
    ami=data.aws_ami.ami_example.id
    instance_type="t3.micro"
    vpc_security_group_ids=[aws_security_group.sg_example.id]
    tags={
        Name="Example"
    }    
}

resource "aws_security_group" "sg_example"{
    name="Example-security_group"
    description="This is security_group"

    # Defining inbound rules
    ingress{
        from_port=22
        to_port=22
        protocol="tcp"
        cidr_blocks=["0.0.0.0/0"] # Allow SSH access from anywhere
    }
    egress{
        from_port=0
        to_port=0
        protocol="-1"
        cidr_blocks=["0.0.0.0/0"]
    }

}

