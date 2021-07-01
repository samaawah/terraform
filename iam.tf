resource "aws_iam_user" "lb" {
  name = var.user_id
  path = "/system/"
}
