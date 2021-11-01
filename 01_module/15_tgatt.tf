resource "aws_lb_target_group_attachment" "suk_lbtg_att" {
  target_group_arn      = aws_lb_target_group.suk_lbtg.arn
  target_id             = aws_instance.suk_weba.id
  port                  = 80 
}