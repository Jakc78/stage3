resource "aws_security_group" "allow_tls" {
  name        = "Stage1-SG"
  description = "Allow TLS inbound traffic"

  tags = {
    Name = "Stage1-SG"
  }
}

