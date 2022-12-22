module "vpc" {
  source                   = "./vendor/modules/vpc"  
  VPC_CIDR                 = var.VPC_CIDR
  ENV                      = var.ENV
  PUBLIC_SUBNET_CIDR       = var.PUBLIC_SUBNET_CIDR
  PRIVATE_SUBNET_CIDR      = var.PRIVATE_SUBNET_CIDR
  AZ                       = var.AZ 
  DEFAULT_VPC_ID           = var.DEFAULT_VPC_ID
  DEFAULT_VPC_CIDR         = var.DEFAULT_VPC_CIDR
  DEFAULT_VPC_RT           = var.DEFAULT_VPC_RT
  PRIVATE_HOSTED_ZONEID    = var.PRIVATE_HOSTED_ZONEID
  PRIVATE_HOSTED_ZONENAME  = var.PRIVATE_HOSTED_ZONENAME 
  PUBLIC_HOSTED_ZONEID     = var.PUBLIC_HOSTED_ZONEID
  PUBLIC_HOSTED_ZONENAME   = var.PUBLIC_HOSTED_ZONENAME
}

# module "vpc" {
#   source = "git::https://github.com/b51-clouddevops/tf-module-vpc.git"
# }

# We cannot parameterise anything on source of the module. So that means we cannot use the variables.
# How can I tell to my source module to fetch the code from a branch of my choice ? By default, it only refers to main branch
# Alternatives to make it flexible ?

