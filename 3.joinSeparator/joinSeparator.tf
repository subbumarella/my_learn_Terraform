variable "my_list"{
    type=list
    default=["apple","banana","cherry"]
}

output "joinseparator"{
    value=join(", ",var.my_list)
}