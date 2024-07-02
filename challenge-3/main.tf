
variable "instance_config" {
  type = map
  default = {
    instance1 = { instance_type = "t2.micro", ami = "ami-03a6eaae9938c858c" }
    instance2 = { instance_type = "t2.small", ami = "ami-053b0d53c279acc90" }
  }
}

resource  "aws_instance" "first_ec2" {
  for_each = var.instance_config 
   tags = {
    Name = each.key
  }
  instance_type = each.value.instance_type
  ami = each.value.ami
}

