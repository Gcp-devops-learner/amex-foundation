terraform {
  required_version = "0.15.0"
  backend "gcs" {
    bucket = "amex-tf-state"
    prefix = "terraform/state/0.15/networking/network-e3-tunnels"
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