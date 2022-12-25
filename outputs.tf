output "ALB_ARN" {
    value  =  aws_lb.alb.arn 
}

output "PRIVATE_LISTENER_ARN" {
    value = aws_lb_listener.private.*.arn   # * is coming to picture as we are using count.
}