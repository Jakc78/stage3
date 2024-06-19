resource "aws_instance" "vm" {
  ami             = var.ami
  instance_type   = var.instance_type

  metadata_options {
    http_endpoint = "enabled"
    http_tokens   = "required"
  }

  associate_public_ip_address = true

  tags = {
    Name = "Stage1"
  }

}
