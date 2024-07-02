
resource  "aws_instance" "ec2_iterate" {
  for_each = var.instance_config 
   tags = {
    Name = each.key
  }
  instance_type = each.value.instance_type
  ami = each.value.ami
}

