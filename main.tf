module "security-group" {
  source  = "terraform-aws-modules/security-group/aws"
  name = "samoilenko-sg-test"
  vpc_id = var.vpc_id
  tags = {
    "owner" = "y.samoilenko@scalr.com"
    }
}
module "security-group-2" {
  source  = "terraform-aws-modules/security-group/aws"
  name = "samoilenko-sg-test-2"
  vpc_id = var.vpc_id2
  tags = {
    "owner" = "y.samoilenko@scalr.com"
    }
}
variable "vpc_id" {
   default = "vpc-596aa03e"
   sensitive = true
}
  
variable "vpc_id2" {
   description = "test variable"
}

output "test" {
  value = var.vpc_id2
}
