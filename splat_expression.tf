provider "aws" {
    region = "eu-west-1"
}

resource "aws_iam_user" "user_add" {
    name = "iamuser.${count.index}"
    count = 3
    path = "/system/"
}

output "arns" {
    value = aws_iam_user.user_add[*].arn
}
