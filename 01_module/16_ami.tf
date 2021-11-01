resource "aws_ami_from_instance" "suk_ami" {
  name                    = "suk-ami"
  source_instance_id      = aws_instance.suk_weba.id
  depends_on = [
    aws_instance.suk_weba
  ]
}