resource "aws_placement_group" "suk_pg" {
  name     = "suk-pg"
  strategy = "cluster"
}

resource "aws_autoscaling_group" "suk_atsg" {
  name                      = "suk-atsg"
  min_size                  = 2
  max_size                  = 8
  health_check_grace_period = 300
  health_check_type         = "ELB"
  desired_capacity          = 2
  force_delete              = true
  launch_configuration      = aws_launch_configuration.suk_lacf.name
  vpc_zone_identifier       = [aws_subnet.suk_puba.id,aws_subnet.suk_pubc.id]
}