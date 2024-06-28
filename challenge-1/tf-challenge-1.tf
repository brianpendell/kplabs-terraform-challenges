
#modernized to current version (5.56.1 aws and terraform 1.9.0) as per challenge.
# removed digital ocean provider as it is not being used. 
# updated aws eip resource by comparing the old specification 
# https://registry.terraform.io/providers/hashicorp/aws/2.54.0/docs/resources/eip
# with the current version 
# https://registry.terraform.io/providers/hashicorp/aws/5.56.1/docs/resources/eip
# to determine what the old terraform script was attempting to do, and upgrade 
# it accordingly. 
# added required_providers. It isn't really needed, since by default you will
# use the latest version, but it was mentioned so probably expected. 
# corrected from solution :They did want to include the no-op digital ocean 
# provider as well, even though we're not using it. What they were trying to 
# do is show that the old style of declaring a provider would not work with
# non-official providers such as digital ocean. 
terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
  }
}

provider "aws" {
region = "us-east-1"
}


resource "aws_eip" "kplabs_app_ip" {
  domain = "vpc"
}
