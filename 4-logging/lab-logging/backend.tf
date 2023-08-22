# Copyright 2021 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose. Your use of it is subject to your agreement with Google.

terraform {
  required_version = "~> 0.15.0"
  backend "gcs" {
    bucket = "amex-tf-state"
    prefix = "terraform/state/0.15/logging-lab"
  }
}

provider "google" {
  alias                 = "create_dataset"
  user_project_override = true
}
