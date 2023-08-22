data "terraform_remote_state" "ss_networking" {
  backend = "gcs"
  config = {
    bucket = "amex-tf-state"
    prefix = "terraform/state/0.15/networking/network-shared-services"    
  }
  workspace = "shared-services"
}

data "terraform_remote_state" "prod_networking" {
  backend = "gcs"
  config = {
    bucket = "amex-tf-state"
    prefix = "terraform/state/0.15/networking/network-prod"    
  }
  workspace = "prod"
}

data "terraform_remote_state" "nonprod_networking_dev" {
  backend = "gcs"
  config = {
    bucket = "amex-tf-state"
    prefix = "terraform/state/0.15/networking/network-nonprod"    
  }
  workspace = "dev"
}

data "terraform_remote_state" "nonprod_networking_test" {
  backend = "gcs"
  config = {
    bucket = "amex-tf-state"
    prefix = "terraform/state/0.15/networking/network-nonprod"    
  }
  workspace = "test"
}
data "terraform_remote_state" "nonprod_networking_lab" {
  backend = "gcs"
  config = {
    bucket = "amex-tf-state"
    prefix = "terraform/state/0.15/networking/network-nonprod"    
  }
  workspace = "lab"
}


data "terraform_remote_state" "org" {
  backend = "gcs"
  config = {
    bucket = "amex-tf-state"
    prefix = "terraform/state/0.15/RM"    
  }
  workspace = "default"
}
