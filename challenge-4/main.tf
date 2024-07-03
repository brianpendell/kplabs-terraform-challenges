
data "aws_iam_users" "allusers" {}

data "aws_caller_identity" "userdata" {}

resource "aws_iam_user" "step1" {
  name = "admin-user-${data.aws_caller_identity.userdata.user_id}"
}


output "iamusernames" {
   value = data.aws_iam_users.allusers.names
}

output "iamusercounts" {
  value = length(data.aws_iam_users.allusers.names)
}

