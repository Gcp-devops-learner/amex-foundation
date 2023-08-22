# Copyright 2021 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose. Your use of it is subject to your agreement with Google.


/* Account information and Region */

org_id           = "678233521001"
billing_account  = "011D0C-1A8549-C0EFB4"
group_org_admins = "dc-amex-foundations@google.com"
default_region   = "us-central1"


/* Project naming convention */

organization = "amx"
geo          = "us"
env          = "bootstrap"

project_labels = {
  "gcp_region" : "us"
  "owner" : "hybridenv"
  "application_division" : "tdb"
  "application_name" : "tbd"
  "application_role" : "app"
  "environment" : "core"
  "au" : "97649"
}

/* Bootstrap Folder Name */


bootstrap_folder = "amex-bootstrap"


/* Apis to be enabled */

activate_apis = [
  "cloudresourcemanager.googleapis.com",
  "iam.googleapis.com",
  "cloudbilling.googleapis.com",
  "storage-api.googleapis.com",
  "serviceusage.googleapis.com",
  "cloudkms.googleapis.com",
  "bigquery.googleapis.com",
  "logging.googleapis.com",
  "billingbudgets.googleapis.com"
]
