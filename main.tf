resource "aws_launch_template" "foobar" {
  name   = var.name
  image_id      = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_group_ids
  user_data = var.user_data
}

resource "aws_autoscaling_group" "bar" {
  name  = var.name
  desired_capacity   = var.desired_capacity
  max_size           = var.max_size
  min_size           = var.min_size
  vpc_zone_identifier = var.subnet_id
  launch_template {
    id      = aws_launch_template.foobar.id
    version = "$Latest"
  }
  
  target_group_arns = var.target_group_arns
}
