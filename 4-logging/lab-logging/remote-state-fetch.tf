/*
data "terraform_remote_state" "project" {
  backend = "remote"
  config = {
    organization = "aexp"
    hostname = "tfe.aexp.com"
    workspaces = {
      name = ""
    }
  }
}
*/

data "terraform_remote_state" "project" {
  backend = "gcs"
  config = {
    bucket = "amex-tf-state"
    prefix = "terraform/state/0.15/RMN"    
  }
  workspace = "default"
}


