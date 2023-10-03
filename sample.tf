
resource "aws_instance" "FirstEC2Instace"{
    ami= "ami-03265a0778a880afb"
    instance_type= "t2.micro"
    tags={
        Name= "Sample EC2"
    }    
}

output "public_ip_address"{
    description = "Getting Public IP Address"
    value = "The Public IP is - ${aws_instance.FirstEC2Instace.public_ip}"
}
    