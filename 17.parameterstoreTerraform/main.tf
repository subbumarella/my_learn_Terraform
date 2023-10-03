resource "aws_ssm_parameter" "ex"{
    count=length(var.params)
    name=var.params[count.index].name
    type=var.params[count.index].type
    value=var.params[count.index].value
}

variable "params"{
    default=[
        {name="roboshop.dev.frontend.catalogue_url",type="String",value="http://catalogue-dev.roboshopmarket.store:8080/"},
        {name="roboshop.dev.frontend.user_url",type="String",value="http://user-dev.roboshopmarket.store:8080/"},
        {name="roboshop.dev.frontend.cart_url",type="String",value="http://cart-dev.roboshopmarket.store:8080/"},
        {name="roboshop.dev.frontend.shipping_url",type="String",value="http://shipping-dev.roboshopmarket.store:8080/"},
        {name="roboshop.dev.frontend.payment_url",type="String",value="http://payment-dev.roboshopmarket.store:8080/"},
    ]
}