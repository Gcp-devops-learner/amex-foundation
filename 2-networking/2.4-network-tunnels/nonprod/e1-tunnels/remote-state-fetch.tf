data "terraform_remote_state" "nonprod_network_e1" {
  backend = "gcs"
  config = {
    bucket = "amex-tf-state"
    prefix = "terraform/state/0.15/networking/network-nonprod-e1"
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

data "terraform_remote_state" "ss_tunnels" {
  backend = "gcs"
  config = {
    bucket = "amex-tf-state"
    prefix = "terraform/state/0.15/networking/network-ss-tunnels"
  }
  workspace = "default"
}