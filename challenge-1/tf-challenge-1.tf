
#modernized to current version (5.56.1 aws and terraform 1.9.0) as per challenge.
# removed digital ocean provider as it is not being used. 
# updated aws eip resource by comparing the old specification 
# https://registry.terraform.io/providers/hashicorp/aws/2.54.0/docs/resources/eip
# with the current version 
# https://registry.terraform.io/providers/hashicorp/aws/5.56.1/docs/resources/eip
# to determine what the old terraform script was attempting to do, and upgrade 
# it accordingly. 
provider "aws" {
region = "us-east-1"
}


resource "aws_eip" "kplabs_app_ip" {
  domain = "vpc"
}
