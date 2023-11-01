resource "aws_iam_user" "ecs_deployer" {
  name = "ecs_deployer"
  path = "/ecs/"
}
resource "aws_iam_user_policy" "ecs_deployer_policy" {
  name = "ecs_deployer_policy"
  user = aws_iam_user.ecs_deployer.name

  policy = "${file("ecs_deployer.json")}"
}

resource "aws_iam_access_key" "ecs_deployer" {
  user = aws_iam_user.ecs_deployer.name
}
