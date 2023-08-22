terraform {
  required_version = "0.15.3"
  backend "gcs" {
    bucket = "amex-tf-state"
    prefix = "terraform/state/0.15/networking/network-ss-tunnels"
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