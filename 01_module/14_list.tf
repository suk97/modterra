resource "aws_lb_listener" "suk_lblist" {
  load_balancer_arn       = aws_lb.suk_lb.arn
  port                    = 80
  protocol                = "HTTP"

  default_action {
    type                  = "forward"
    target_group_arn      = aws_lb_target_group.suk_lbtg.arn  
  }
}