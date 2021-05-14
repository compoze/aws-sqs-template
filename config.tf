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

  common_tags = {
    Name        = local.name
    Application = var.name
    Environment = var.environment
    Terraform   = "cloud"
  }
}

