terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "methridge"
    workspaces {
      name = "me-aws-sandbox-ssl"
    }
  }
  required_providers {
    acme = {
      source  = "vancluever/acme"
      version = ">= 2.0"
    }
  }
  required_version = ">= 0.15"
}

provider "acme" {
  server_url = "https://acme-v02.api.letsencrypt.org/directory"
}
