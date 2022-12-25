# This should be created for internal or private load balancer only
resource "aws_lb_listener" "private" {
  count             = var.INTERNAL ? 1 : 0
  load_balancer_arn = aws_lb.alb.arn
  port              = "80"
  protocol          = "HTTP"


  default_action {
    type = "fixed-response"

    fixed_response {
      content_type = "text/plain"
      message_body = "OK"
      status_code  = "200"
    }
  }
}