output "VPC_ID" {
    value = module.vpc.VPC_ID
}

output "VPC_CIDR" {
    value =  module.vpc.VPC_CIDR
}

output "PRIVATE_SUBNET_ID" {
    value = module.vpc.PRIVATE_SUBNET_ID
}

output "PUBLIC_SUBNET_ID" {
    value = module.vpc.PUBLIC_SUBNET_ID
}

output "PRIVATE_SUBNET_CIDR" {
    value = module.vpc.PRIVATE_SUBNET_CIDR
}

output "PUBLIC_SUBNET_CIDR" {
    value = module.vpc.PUBLIC_SUBNET_CIDR
}

output "DEFAULT_VPC_ID" {
    value  =  module.vpc.DEFAULT_VPC_ID
}

output "DEFAULT_VPC_CIDR" {
    value  =  module.vpc.DEFAULT_VPC_CIDR
}


output "PRIVATE_HOSTED_ZONEID" {
    value = var.PRIVATE_HOSTED_ZONEID
}

output "PRIVATE_HOSTED_ZONENAME" {
    value = var.PRIVATE_HOSTED_ZONENAME
}

output "PUBLIC_HOSTED_ZONEID" {
    value = var.PUBLIC_HOSTED_ZONEID 
}

output "PUBLIC_HOSTED_ZONENAME" {
    value = var.PUBLIC_HOSTED_ZONENAME
}