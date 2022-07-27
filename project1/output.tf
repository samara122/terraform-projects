output "user3arn" {
    value = aws_iam_user.myuser_jasmine.arn
}

output "familykeyid" {
    value = aws_key_pair.myfamilykeypair.key_pair_id
}
