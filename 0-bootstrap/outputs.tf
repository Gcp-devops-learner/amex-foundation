# Copyright 2021 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose. Your use of it is subject to your agreement with Google.

output "seed_project_id" {
  description = "Details of Seed Bootstrap project"
  value       = module.seed_project.project_id
}

output "terraform_sa_email" {
  description = "Email for privileged service account for Terraform."
  value       = google_service_account.org_terraform.email
}

output "terraform_sa_name" {
  description = "Fully qualified name for privileged service account for Terraform."
  value       = google_service_account.org_terraform.name
}

output "org_id" {
  description = "Organization ID"
  value       = var.org_id
}

output "billing_account" {
  description = "Billing Account for Organization"
  value       = var.billing_account
}

output "project_creator_role_id" {
  value       = module.project_creator_role.custom_role_id
  description = "ID of the project_creator_role custom role created."
}

output "billing_admin_role" {
  value       = module.billing_admin_role.custom_role_id
  description = "ID of the billing_admin_role custom role created."
}

output "billing_user_role" {
  value       = module.billing_user_role.custom_role_id
  description = "ID of the billing_user_role custom role created."
}

output "billing_creator_role" {
  value       = module.billing_creator_role.custom_role_id
  description = "ID of the billing_user_role custom role created."
}

output "security_admin_role" {
  value       = module.security_admin_role.custom_role_id
  description = "ID of the security_admin_role custom role created."
}

output "organization_viewer_role" {
  value       = module.organization_viewer_role.custom_role_id
  description = "ID of the organization_viewer_role custom role created."
}


output "policy_admin_role" {
  value       = module.policy_admin_role.custom_role_id
  description = "ID of the policy_admin_role custom role created."
}

output "organization_admin_role" {
  value       = module.organization_admin_role.custom_role_id
  description = "ID of the organization_admin_role custom role created."
}
