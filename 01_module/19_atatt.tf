resource "aws_autoscaling_attachment" "suk_atatt" {
  autoscaling_group_name = aws_autoscaling_group.suk_atsg.id
  alb_target_group_arn   = aws_lb_target_group.suk_lbtg.arn
}