# Copyright 2021 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose. Your use of it is subject to your agreement with Google.

terraform {
  required_version = ">=0.15.3"
  backend "gcs" {
    bucket = "amex-tf-state"
    prefix = "terraform/state/0.15.3/networking/network-prod-e3"
    }
}

/* To be used in enterprise edition
terraform { 
    backend "remote" { 
        hostname = "tfe.aexp.com"
        organization = "aexp"
        workspaces { 
            name = "" 
        } 
  } 
}
*/
