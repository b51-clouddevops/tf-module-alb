output "ALB_ARN" {
    value  =  aws_lb.alb.arn 
}

output "LISTENER_ARN" {
    value = aws_lb_listener.private.*.arn   # * is coming to picture as we are using count.
}

output "ALB_ADDRESS" {
    value = aws_lb.alb.dns_name
}