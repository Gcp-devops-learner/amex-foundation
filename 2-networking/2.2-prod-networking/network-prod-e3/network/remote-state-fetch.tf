data "terraform_remote_state" "ss_networking" {
  backend = "gcs"
  config = {
    bucket = "amex-tf-state"
    prefix = "terraform/state/0.15.3/networking/network-ss-network"    
  }
  workspace = "default"
}

data "terraform_remote_state" "prod_networking" {
  backend = "gcs"
  config = {
    bucket = "amex-tf-state"
    prefix = "terraform/state/0.15.3/networking/network-prod-e3"    
  }
  workspace = "default"
}