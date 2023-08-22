# Copyright 2021 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose. Your use of it is subject to your agreement with Google.

/*####################################
  Custom Role Cloud Security Admin
*/ ####################################

module "cloud-security-admin" {
  source = "terraform-google-modules/iam/google//modules/custom_role_iam"

  target_level = "org"
  target_id    = var.org_id
  role_id      = "org_security_admin"
  title        = "cloud security admin"
  description  = "cloud security admin user custom role"
  # base_roles = ["roles/resourcemanager.organizationViewer", "roles/orgpolicy.policyAdmin", "roles/iam.securityReviewer", "roles/securitycenter.admin", "roles/logging.privateLogViewer", "roles/logging.configWriter", "roles/container.viewer", "roles/compute.viewer", "roles/bigquery.metadataViewer"]
  permissions = var.cloud-security-admin-permissions
  members     = []
}

/*####################################
  Custom Role Cloud Security Poweruser
*/ ####################################

module "cloud-security-poweruser" {
  source = "terraform-google-modules/iam/google//modules/custom_role_iam"

  target_level = "org"
  target_id    = var.org_id
  role_id      = "org_security_poweruser" 
  title        = "cloud security power user"
  description  = "cloud security power user custom role"
  # base_roles = ["roles/resourcemanager.organizationViewer", "roles/orgpolicy.policyViewer", "roles/iam.securityReviewer", "roles/securitycenter.adminViewer", "roles/logging.privateLogViewer", "roles/container.viewer", "roles/compute.viewer", "roles/bigquery.dataViewer"]
  permissions = var.cloud-security-poweruser-permissions
  members     = []
}

/*##################################
  Custom Role Infosec Audit
*/ ##################################

module "infosec-audit" {
  source = "terraform-google-modules/iam/google//modules/custom_role_iam"

  target_level = "org"
  target_id    = var.org_id
  role_id      = "org_infosecaudit_viewer"
  title        = "infosec audit"
  description  = "infosec audit custom role"
  # base_roles = ["roles/resourcemanager.organizationViewer", "roles/iam.securityReviewer"]
  permissions = var.org_infosecaudit_viewer_permissions
  members     = []
}

/*######################
  Custom Role IAM Admin
*/ ######################


module "iam-admin" {
  source = "terraform-google-modules/iam/google//modules/custom_role_iam"

  target_level = "org"
  target_id    = var.org_id
  role_id      = "org_iam_admin"
  title        = "iam admin"
  description  = "iam admin user custom role"
  # base_roles = ["roles/iam.organizationRoleAdmin", "roles/resourcemanager.folderIamAdmin", "roles/iam.workloadIdentityPoolAdmin", "roles/iam.securityAdmin"]
  permissions = var.iam-admin-permissions
  members     = []
}

/*##################################
  Custom Role IAM Poweruser
*/ ##################################

module "iam-poweruser" {
  source = "terraform-google-modules/iam/google//modules/custom_role_iam"

  target_level = "org"
  target_id    = var.org_id
  role_id      = "org_iam_poweruser"
  title        = "iam power user"
  description  = "iam power user custom role"
  # base_roles = ["roles/iam.organizationRoleViewer", "roles/iam.workloadIdentityPoolViewer", "roles/iam.securityReviewer"]
  permissions = var.iam-poweruser-permissions
  members     = []
}

/*#######################################
  Custom Role Network Security Eng Admin
*/ #######################################

module "network-security-eng-admin" {
  source = "terraform-google-modules/iam/google//modules/custom_role_iam"

  target_level = "org"
  target_id    = var.org_id
  role_id      = "org_netsec_admin"
  title        = "network security eng admin"
  description  = "network security eng admin user custom role"
  # base_roles = ["roles/compute.securityAdmin", "roles/accesscontextmanager.policyAdmin"]
  permissions = var.network-security-eng-admin-permissions
  members     = []
}

/*##########################################
  Custom Role Network Security Eng poweruser
*/ ##########################################

module "network-security-eng-poweruser" {
  source = "terraform-google-modules/iam/google//modules/custom_role_iam"

  target_level = "org"
  target_id    = var.org_id
  role_id      = "org_netsec_poweruser"
  title        = "network security eng power user"
  description  = "network security eng power user custom role"
  # base_roles = ["roles/compute.orgFirewallPolicyAdmin", "roles/accesscontextmanager.policyReader"]
  permissions = var.network-security-eng-poweruser-permissions
  members     = []
}

/*########################
  Custom Role SIEM Admin
*/ ########################

module "siem-admin" {
  source = "terraform-google-modules/iam/google//modules/custom_role_iam"

  target_level = "org"
  target_id    = var.org_id
  role_id      = "org_siem_admin"
  title        = "siem admin"
  description  = "siem admin custom role"
  # base_roles = ["roles/logging.viewer", "roles/monitoring.viewer"]
  permissions = var.siem-admin-permissions
  members     = []
}

/*##################################
  Custom Role SIEM Poweruser
*/ ##################################

module "siem-poweruser" {
  source = "terraform-google-modules/iam/google//modules/custom_role_iam"

  target_level = "org"
  target_id    = var.org_id
  role_id      = "org_siem_poweruser"
  title        = "siem poweruser"
  description  = "siem poweruser custom role"
  # base_roles = ["roles/logging.viewer", "roles/monitoring.viewer"]
  permissions = var.siem-poweruser-permissions
  members     = []
}

/*#####################
  Custom Role IR Admin
*/ #####################

module "ir-admin" {
  source = "terraform-google-modules/iam/google//modules/custom_role_iam"

  target_level = "org"
  target_id    = var.org_id
  role_id      = "org_ir_admin"
  title        = "ir admin"
  description  = "ir admin custom role"
  # base_roles = ["roles/resourcemanager.organizationViewer", "roles/securitycenter.adminViewer"]
  permissions = var.ir-admin-permissions
  members     = []
}

/*##################################
  Custom Role IR Poweruser
*/ ##################################


module "ir-poweruser" {
  source = "terraform-google-modules/iam/google//modules/custom_role_iam"

  target_level = "org"
  target_id    = var.org_id
  role_id      = "org_ir_poweruser"
  title        = "ir poweruser"
  description  = "ir poweruser custom role"
  # base_roles = ["roles/resourcemanager.organizationViewer", "roles/securitycenter.adminViewer"]
  permissions = var.ir-poweruser-permissions
  members     = []
}

/*##########################
  Custom Role Crypto Admin
*/ ##########################

module "crypto-admin" {
  source = "terraform-google-modules/iam/google//modules/custom_role_iam"

  target_level = "org"
  target_id    = var.org_id
  role_id      = "org_crypto_admin"
  title        = "crypto admin"
  description  = "crypto custom role"
  # base_roles = ["roles/cloudkms.admin"]
  permissions = var.crypto-admin-permissions
  members     = []
}

/*##################################
  Custom Role Crypto Poweruser
*/ ##################################
/*
module "crypto-poweruser" {
  source = "terraform-google-modules/iam/google//modules/custom_role_iam"

  target_level = "org"
  target_id    = var.org_id
  role_id      = "org_crypto_poweruser"
  title        = "crypto poweruser"
  description  = "crypto poweruser custom role"
  # base_roles = ["roles/cloudkms.admin"]
  permissions  = var.crypto-poweruser-permissions
  members      = []
}
*/

/*########################
  Custom Role DDI Admin
*/ ########################

module "ddi-admin" {
  source = "terraform-google-modules/iam/google//modules/custom_role_iam"

  target_level = "org"
  target_id    = var.org_id
  role_id      = "org_ddi_admin"
  title        = "ddi admin"
  description  = "ddi admin custom role"
  # base_roles = ["roles/dns.admin"]
  permissions = var.ddi-admin-permissions
  members     = []
}

/*##################################
  Custom Role DDI poweruser
*/ ##################################

module "ddi-poweruser" {
  source = "terraform-google-modules/iam/google//modules/custom_role_iam"

  target_level = "org"
  target_id    = var.org_id
  role_id      = "org_ddi_poweruser"
  title        = "ddi poweruser"
  description  = "ddi poweruser custom role"
  # base_roles = ["roles/dns.reader"]
  permissions = var.ddi-poweruser-permissions
  members     = []
}

/*##########################
  Custom Role Billing Admin
*/ ##########################

module "billing-admin" {
  source = "terraform-google-modules/iam/google//modules/custom_role_iam"

  target_level = "org"
  target_id    = var.org_id
  role_id      = "org_billing_admin"
  title        = "billing admin"
  description  = "billing admin custom role"
  # base_roles = ["roles/billing.admin", "roles/billing.creator", "roles/resourcemanager.organizationViewer"]
  permissions = var.billing-admin-permissions
  members     = []
}

/*##################################
  Custom Role Billing Poweruser
*/ ##################################

module "billing-poweruser" {
  source = "terraform-google-modules/iam/google//modules/custom_role_iam"

  target_level = "org"
  target_id    = var.org_id
  role_id      = "org_billing_viewer"
  title        = "billing poweruser"
  description  = "billing poweruser custom role"
  # base_roles = ["roles/billing.viewer", "roles/resourcemanager.organizationViewer"]
  permissions = var.billing-poweruser-permissions
  members     = []
}

/*###########################
  Custom Role Network Admin
*/ ###########################

module "network-admin" {
  source = "terraform-google-modules/iam/google//modules/custom_role_iam"

  target_level = "org"
  target_id    = var.org_id
  role_id      = "org_network_admin"
  title        = "network admin"
  description  = "network admin custom role"
  # base_roles = ["roles/compute.networkAdmin", "roles/compute.xpnAdmin", "roles/resourcemanager.folderViewer", "roles/owner"]
  permissions = var.network-admin-permissions
  members     = []
}

/*##################################
  Custom Role Network Poweruser
*/ ##################################

module "network-poweruser" {
  source = "terraform-google-modules/iam/google//modules/custom_role_iam"

  target_level = "org"
  target_id    = var.org_id
  role_id      = "org_network_poweruser"
  title        = "network poweruser"
  description  = "network poweruser custom role"
  # base_roles = ["roles/compute.networkViewer", "roles/resourcemanager.folderViewer", "roles/viewer"]
  permissions = var.network-poweruser-permissions
  members     = []
}

/*##################################
  Custom Role CloudOps Admin
*/ ##################################
/*
module "cloudops-admin" {
  source = "terraform-google-modules/iam/google//modules/custom_role_iam"

  target_level = "org"
  target_id    = var.org_id
  role_id      = "org_cloudops_admin"
  title        = "cloudops admin"
  description  = "cloudops admin custom role"
  # base_roles = [""] // roles should be specified here
  permissions  = var.cloudops-admin-permissions
  members      = []
}
*/

/*##################################
  Custom Role CloudOps Poweruser
*/ ##################################
/*
module "cloudops-poweruser" {
  source = "terraform-google-modules/iam/google//modules/custom_role_iam"

  target_level = "org"
  target_id    = var.org_id
  role_id      = "org_cloudops_poweruser"
  title        = "cloudops poweruser"
  description  = "cloudops poweruser custom role"
  # base_roles = [""] // roles should be specified here
  permissions  = var.cloudops-poweruser-permissions
  members      = []
}
*/

/*##################################
  Custom Role CICD Poweruser
*/ ##################################
/*
module "cicd-poweruser" {
  source = "terraform-google-modules/iam/google//modules/custom_role_iam"

  target_level = "org"
  target_id    = var.org_id
  role_id      = "org_cicd_puE0:E1-E3:" 
  title        = "cicd poweruser"
  description  = "cicd poweruser custom role"
  # base_roles = [""] // roles should be specified here
  permissions  = var.cicd-poweruser-permissions
  members      = []
}
*/

/*####################################
  Custom Role CloudSoultions Poweruser
*/ ####################################

module "cloudsolutions-poweruser" {
  source = "terraform-google-modules/iam/google//modules/custom_role_iam"

  target_level = "org"
  target_id    = var.org_id
  role_id      = "org_solutions_puE0:E1-E3:"
  title        = "cloudsolutions poweruser"
  description  = "cloudsolutions poweruser custom role"
  # base_roles = ["roles/resourcemanager.projectCreator", "roles/compute.networkUser", "roles/bigquery.dataOwner", "roles/bigquery.user", "roles/dataproc.admin", "roles/storage.admin", "roles/logging.logWriter", "roles/logging.privateLogViewer"]
  permissions = var.cloudsolutions-poweruser-permissions
  members     = []
}

/*###############################
  Custom Role CloudQE Poweruser
*/ ###############################

module "cloudqe-poweruser" {
  source = "terraform-google-modules/iam/google//modules/custom_role_iam"

  target_level = "org"
  target_id    = var.org_id
  role_id      = "org_quality_puE0:E1-E3:"
  title        = "cloudqe-poweruser"
  description  = "cloudqe-poweruser custom role"
  # base_roles = ["roles/resourcemanager.projectCreator", "roles/compute.networkUser", "roles/bigquery.dataOwner", "roles/bigquery.user", "roles/dataproc.admin", "roles/storage.admin", "roles/logging.logWriter", "roles/logging.privateLogViewer"]
  permissions = var.cloudqe-poweruser-permissions
  members     = []
}

/*##################################
  Custom Role Product Poweruser
*/ ##################################

module "product-poweruser" {
  source = "terraform-google-modules/iam/google//modules/custom_role_iam"

  target_level = "org"
  target_id    = var.org_id
  role_id      = "org_product_puE0:E1-E3:"
  title        = "product poweruser"
  description  = "product poweruser custom role"
  # base_roles = ["roles/cloudasset.viewer"]
  permissions = var.product-poweruser-permissions
  members     = []
}

/*##################################
  Custom Role CloudEng Admin
*/ ##################################

module "cloudeng-admin" {
  source = "terraform-google-modules/iam/google//modules/custom_role_iam"

  target_level = "org"
  target_id    = var.org_id
  role_id      = "org_corefoundation_admin"
  title        = "cloudeng admin"
  description  = "cloudeng admin custom role"
  # base_roles = ["roles/resourcemanager.organizationAdmin", "roles/resourcemanager.folderAdmin", "roles/resourcemanager.projectCreator", "roles/billing.user", "roles/billing.viewer", "roles/iam.organizationRoleViewer", "roles/orgpolicy.policyAdmin", "roles/cloudsupport.admin", "roles/container.admin", "roles/compute.admin", "roles/logging.admin", "roles/monitoring.admin", "roles/iam.serviceAccountUser"]
  permissions = var.cloudeng-admin-permissions
  members     = []
}

/*##################################
  Custom Role CloudEng Poweruser
*/ ##################################

module "cloudeng-powersuer" {
  source = "terraform-google-modules/iam/google//modules/custom_role_iam"

  target_level = "org"
  target_id    = var.org_id
  role_id      = "org_corefoundation_poweruser"
  title        = "cloudeng poweruser"
  description  = "cloudeng poweruser custom role"
  # base_roles = ["roles/resourcemanager.organizationViewer", "roles/resourcemanager.folderViewer", "roles/billing.viewer", "roles/iam.organizationRoleViewer", "roles/orgpolicy.policyViewer", "roles/cloudsupport.techSupportViewer", "roles/container.viewer", "roles/compute.viewer", "roles/logging.viewer", "roles/monitoring.viewer"]
  permissions = var.cloudeng-powersuer-permissions
  members     = []
}

/*####################################
  Custom Role BigData Admin
*/ ####################################
/*
module "bigdata-admin" {
  source = "terraform-google-modules/iam/google//modules/custom_role_iam"

  target_level = "org"
  target_id    = var.org_id
  role_id      = "org_bigdata_admin" # role id to be added here
  title        = "bigdata admin"
  description  = "bigdata admin user custom role"
  # base_roles = ["roles/billing.viewer", "roles/logging.admin", "roles/monitoring.admin", "roles/iam.serviceAccountUser", "roles/dataproc.admin", "roles/storage.admin", "roles/compute.admin", "roles/bigquery.admin", "roles/composer.admin", "roles/pubsub.admin", "roles/dataflow.admin", "roles/bigtable.admin"]
  permissions = var.bigdata-admin-permissions
  members     = []
}
*/
/*####################################
  Custom Role BigData Developer
*/ ####################################
/*
module "bigdata-developer" {
  source = "terraform-google-modules/iam/google//modules/custom_role_iam"

  target_level = "org"
  target_id    = var.org_id
  role_id      = "org_bigdata_developer" # role id to be added here
  title        = "bigdata developer"
  description  = "bigdata developer user custom role"
  # base_roles = ["roles/billing.viewer", "roles/logging.logWriter", "roles/logging.viewer", "roles/logging.configWriter", "roles/monitoring.dashboardEditor", "roles/iam.serviceAccountUser", "roles/dataproc.worker", "roles/storage.objectViewer", "roles/compute.instanceAdmin.v1", "roles/bigquery.user", "roles/composer.worker", "roles/pubsub.publisher", "roles/pubsub.subscriber", "roles/pubsub.viewer" , "roles/dataflow.developer", "roles/bigtable.user"]
  permissions = var.bigdata-developer-permissions
  members     = []
}
*/






