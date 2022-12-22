# Creates Security Group for Public ALB
resource "aws_security_group" "allows_mysql" {
  name               = "roboshop-public-alb-${var.ENV}"
  description        = "roboshop-public-alb-${var.ENV}"
  vpc_id             = data.terraform_remote_state.vpc.outputs.VPC_ID

  ingress {
    description      = "Allow http from internet"
    from_port        = 80
    to_port          = var.RDS_MYSQL_PORT
    protocol         = "tcp"
    cidr_blocks      = [data.terraform_remote_state.vpc.outputs.DEFAULT_VPC_CIDR]
  }

  ingress {
    description      = "Allow mysql from default VPC"
    from_port        = var.RDS_MYSQL_PORT
    to_port          = var.RDS_MYSQL_PORT
    protocol         = "tcp"
    cidr_blocks      = [data.terraform_remote_state.vpc.outputs.VPC_CIDR]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "roboshop-${var.ENV}-mysql"
  }
}