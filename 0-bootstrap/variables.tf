# Copyright 2021 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose. Your use of it is subject to your agreement with Google.

variable "org_id" {
  description = "GCP Organization ID"
  type        = string
}

variable "billing_account" {
  description = "The ID of the billing account to associate projects with."
  type        = string
}

variable "group_org_admins" {
  description = "Google Group for GCP Organization Administrators"
  type        = string
}

variable "default_region" {
  description = "Default region to create resources where applicable."
  type        = string
  default     = "us-central1"
}

variable "organization" {
  description = "Part of the project prefix."
  type        = string
  default     = ""
}
variable "geo" {
  description = "Part of the project prefix."
  type        = string
  default     = "us"
}
variable "env" {
  description = "Part of the project prefix."
  type        = string
  default     = "shared"
}

variable "project_labels" {
  description = "Labels to be used applied to the project."
}

variable "bootstrap_folder" {
  description = "Bootstrap Folder Name"
  type        = string
}

variable "activate_apis" {
  description = "The list of apis to activate within the project"
  type        = list(string)
  default     = ["compute.googleapis.com"]
}

variable "org_project_creators" {
  description = "Additional list of members to have project creator role across the organization. Prefix of group: user: or serviceAccount: is required."
  type        = list(string)
  default     = []
}

variable "security_admin_role_perm" {

  type    = list(string)
  default = []

}