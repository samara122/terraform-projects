resource "aws_iam_user" "myuser1" {
  name = "meku1"
}

resource "aws_iam_user" "myuser2" {
  name = "azhu1"
}

resource "aws_iam_user" "myuser_jasmine" {
    name = "jasmine"
}

resource "aws_iam_group" "mygroup1" {
  name = "family-group1"
}

resource "aws_iam_group" "mygroup2" {
  name = "family-group2"
}

resource "aws_iam_group_membership" "mygroupmembership1" {
  name = "family-group-membership"
  users = [
    aws_iam_user.myuser1.name,
    aws_iam_user.myuser2.name
  ]
  group = aws_iam_group.mygroup1.name
}

resource "aws_iam_group_membership" "mygroupmembership2" {
  name = "family-group-membership"
  users = [
    aws_iam_user.myuser_jasmine.name,
  ]
  group = aws_iam_group.mygroup2.name
}
