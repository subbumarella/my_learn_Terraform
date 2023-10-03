variable "my-map"{
    type=map(string)
    default={"name"="subbu","age"=27}
}
output "value"{
    value=lookup(var.my-map,"name")
}