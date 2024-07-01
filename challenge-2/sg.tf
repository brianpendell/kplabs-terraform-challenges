resource "aws_security_group" "payment_app" {
  name        = "payment_app"
  description = "Application Security Group"
  depends_on = [aws_eip.example]
  tags = {
    Name = "payment_app"
    Team = "Payments Team" #Names derived from source code analysis.  
    Env = "Production"
  }
# Below ingress allows HTTPS  from DEV VPC
  ingress {
    from_port        = var.https_ingress_port
    to_port          = var.https_ingress_port
    protocol         = "tcp"
    cidr_blocks      = ["${var.my_ip}/16"]
  }

# Below ingress allows APIs access from DEV VPC

  ingress {
    from_port        = var.api_ingress_port
    to_port          = var.api_ingress_port
    protocol         = "tcp"
    cidr_blocks      = ["${var.my_ip}/16"]
  }

# Below ingress allows APIs access from Prod App Public IP.

  ingress {
    from_port        = var.prod_api_ingress_port
    to_port          = var.prod_api_ingress_port
    protocol         = "tcp"
    cidr_blocks      = ["${aws_eip.example.public_ip}/32"]
  }
 egress {
    from_port        = var.splunk
    to_port          = var.splunk
    protocol         = "tcp"
    cidr_blocks      = ["${var.prod_api_egress_ip}/0"]
  }  

}
