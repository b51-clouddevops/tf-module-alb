module "vpc" {
  source                   = "./vendor/modules/vpc"  
}

We can either go with write code once, use the same for public and private loadbalancers or write individual code for public & private alb 

