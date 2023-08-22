data "terraform_remote_state" "e3_network" {
  backend = "gcs"
  config = {
    bucket = "amex-tf-state"
    prefix = "terraform/state/0.15/networking/network-prod-e3"    
  }
  workspace = "default"
}
