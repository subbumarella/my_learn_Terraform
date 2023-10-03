
terraform {
    backend "s3"{
        bucket="mybucketown"
        key="sample/terraform.tfstate"
        region="us-east-1"
    }
}
