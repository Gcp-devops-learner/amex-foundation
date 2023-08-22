data "terraform_remote_state" "anon_network" {
  backend = "gcs"
  config = {
    bucket = "amex-tf-state"
    prefix = "terraform/state/0.15/networking/network-anon-e3"
  }
  workspace = "default"
}

data "terraform_remote_state" "ss_networking" {
  backend = "gcs"
  config = {
    bucket = "amex-tf-state"
    prefix = "terraform/state/0.15/networking/network-ss-network"
  }
  workspace = "default"
}