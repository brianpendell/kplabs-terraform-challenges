
resource "aws_eip" "example" {
    domain = "vpc"
    tags = {
      Name = "payment_app"
      Team = "Payments Team" #Names derived from source code analysis.  
      Env = "Production"
    }
}