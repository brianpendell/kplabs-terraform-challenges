#this did not work with the version of terraform installed by default. I had to 
# uninstall terraform and install the older version thus: 
#Installed old version of terraform thus: 
#sudo yum remove terraform 
#wget https://releases.hashicorp.com/terraform/0.12.31/terraform_0.12.31_linux_amd64.zip
# this file, once unzipped, was the actual terraform binary which I then 
# had to add to my path so that it would function as expected.  Although
# in this case I just called it directly as ..\terraform, since it was 
# in the directory above my terraform work directory. 

provider "aws" {
version = "~> 2.54"
region = "us-east-1"
}

provider "digitalocean" {}

terraform {
 required_version = "0.12.31"
}


resource "aws_eip" "kplabs_app_ip" {
 vpc  = true
}
