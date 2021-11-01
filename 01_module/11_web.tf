data "aws_ami" "amzn" {
    most_recent = true
    filter {
        name  = "name"
        values = [ "amzn2-ami-hvm-*-x86_64-ebs" ]
    }

    filter {
        name  = "virtualization-type"
        values = [ "hvm" ]
    }

    owners = [ "amazon" ]
}

resource "aws_instance" "suk_weba" {
  ami                    = data.aws_ami.amzn.id
  instance_type          = "t2.micro"
  key_name               = "tf-key"
  vpc_security_group_ids = [aws_security_group.suk_websg.id]
  availability_zone      = "ap-northeast-2a"
  private_ip             = "10.0.0.11"
  subnet_id              = aws_subnet.suk_puba.id
  user_data              = file("./install_seoul.sh")

  tags = {
    Name = "suk-web"
  }
}
resource "aws_eip" "suk_web_eip" {
  vpc = true
  instance                    = aws_instance.suk_weba.id
  associate_with_private_ip   = "10.0.0.11"
  depends_on                  = [aws_internet_gateway.suk_ig]
}
