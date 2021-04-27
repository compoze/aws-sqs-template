terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "test-org-compoze"
  }
}

