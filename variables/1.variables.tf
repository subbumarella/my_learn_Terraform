variable "plain"{
   default= "Devops Training"
}

variable "course_List_Type"{
    default = [
        "Devops",
        "Python",
        "AWS"
    ]
}

variable "course_Map_Type"{
    default={
        Devops={
            name= "Devops"
            Timing= "2hrs"
            Duraion= 90
        }
        AWS={
            Name= "AWS"
            Timing="4hrs"
            Duraion=40
        }
    }
}

output "plain"{
    value=var.plain
}
output "course_List_Type"{
    value=var.course_List_Type
}
output "course_Map_Type"{
    value=var.course_Map_Type["AWS"]
}

variable "env"{}

output "env"{
    value=var.env
}