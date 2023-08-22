data "terraform_remote_state" "e2_network" {
  backend = "gcs"
  config = {
    bucket = "amex-tf-state"
    prefix = "terraform/state/0.15/networking/network-nonprod-e2"    
  }
  workspace = "default"
}
