# This should only be called for the frontend component
module "alb-public" {
  source                   = "./vendor/modules/alb"  
}

# This should only be called for the backend component
module "alb-private" {
  source                   = "./vendor/modules/alb"  
}

