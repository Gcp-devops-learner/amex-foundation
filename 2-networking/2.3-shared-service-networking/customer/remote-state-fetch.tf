data "terraform_remote_state" "ss_network" {
  backend = "gcs"
  config = {
    bucket = "amex-tf-state"
    prefix = "terraform/state/0.15.0/networking/network-ss-network"    
  }
  workspace = "default"
}
