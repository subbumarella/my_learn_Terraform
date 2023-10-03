data "aws_ec2_spot_price" "ex"{
    instance_type="t2.micro"
    availability_zone="us-east-1a"

    filter{
        name="product-description"
        values=["Linux/UNIX"]
    }
}

data "aws_security_group" "sg"{
    name="allow-all"
}

output "aws_security_group"{
    value=data.aws_security_group.sg.name
}

output "price"{
    value=data.aws_ec2_spot_price.ex.spot_price
}
output "spot_price_timestamp"{
    value=data.aws_ec2_spot_price.ex.spot_price_timestamp
}

data "aws_ami" "ami"{
    owners=["amazon"]
    most_recent=true
    name_regex="Centos-8-DevOps-Practice"
}

output "aws_ami_details"{
    value=data.aws_ami.ami.architecture
}