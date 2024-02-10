terraform {
  required_providers {
    aws = {
    source = "hashicorp/aws"    
     version = "4.61.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

 #Create 5 user in terraform in AWS.
variable "devop_users" {
    #type = list(string)
    default = ["Nafinak", "Keita", "Mohamed", "Saran","Bintou"]  
}

resource "aws_iam_user" "love_grps" {
    count = length(var.devop_users)
    name = var.devop_users[count.index]
  
}






