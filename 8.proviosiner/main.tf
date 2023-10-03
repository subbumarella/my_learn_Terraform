data "aws_ami" "ami_ex"{
    owners=["973714476881"]
    most_recent=true
    name_regex="Centos-8-DevOps-Practice"
}

resource "aws_instance" "aws_instance_ex"{
    instance_type="t3.micro"
    ami=data.aws_ami.ami_ex.id
    vpc_security_group_ids=["sg-013ac814af0165c6b"]
    tags={
        Name="FrontEnd"
    }
    provisioner "remote-exec"{
        connection{
            type="ssh"
            user="centos"
            password="DevOps321"
            host=self.public_ip
        }
        inline=[
            "sudo labauto ansible",
            "ansible-pull -i localhost, -U https://github.com/raghudevopsb73/roboshop-ansible main.yml -e env=dev -e role_name=frontend"
        ]
    }
}

