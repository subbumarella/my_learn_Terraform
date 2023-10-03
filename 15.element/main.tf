variable "fruits"{
    default=["banana","apple","orange"]
}

output "result" {
    value = element(var.fruits,3)
}