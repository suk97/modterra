#Application LoadBalancer Deploy
resource "aws_lb" "suk_lb" {
  name                  = "suk-alb"
  internal              = false
  load_balancer_type    = "application"
  security_groups       = [aws_security_group.suk_websg.id]
  subnets               = [aws_subnet.suk_puba.id,aws_subnet.suk_pubc.id]

  tags = {
    Name = "suk-alb"
  }
}