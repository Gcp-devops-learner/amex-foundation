# Copyright 2021 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose. Your use of it is subject to your agreement with Google.


module "prod-service_accounts" {
  source     = "terraform-google-modules/service-accounts/google"
  version    = "~> 3.0"
  project_id = var.prod_iam_project_id
  prefix     = "svc-tfe"
  names      = var.prod-tfe-service-accounts

}

module "dev-service_accounts" {
  source     = "terraform-google-modules/service-accounts/google"
  version    = "~> 3.0"
  project_id = var.dev_iam_project_id
  prefix     = "svc-tfe"
  names      = var.dev-tfe-service-accounts
}

