provider "aws" {
  region = var.region
}

provider "aws" {
  alias  = "secrets"
  region = "us-east-1"
}

locals {
  name              = "${var.name}-${var.environment}"
  environment       = var.environment
  infra_environment = "prod" # default infrastructure environment is production. 
  # route53 will generally always be production (could eventually remove environment enitrely)
  # but for  remaining environments we will default to prod for MVP
  common_tags = {
    Name        = local.name
    Application = var.name
    Environment = var.environment
    Terraform   = "cloud"
  }
}

