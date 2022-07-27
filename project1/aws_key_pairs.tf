resource "aws_key_pair" "myfamilykeypair" {
  key_name   = "family-mac-key"
  public_key = file("~/.ssh/id_rsa.pub")
}
