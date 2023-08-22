# Copyright 2021 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose. Your use of it is subject to your agreement with Google.


/*############################################
  Custom Role Cloud Security Admin IAM Binding
*/ ###########################################

module "cloud-security-admin-project-level-binding" { # Project Level Binding
  source = "../../modules/iam/iam-member-binding"

  target_level = "project"
  org_id       = var.org_id
  project_id   = var.project_id
  role_id      = "org_security_admin"
  members      = var.cloud-security-admin-project-level-binding-members
  depends_on = [
    module.cloud-security-admin
  ]
}

/*############################################################
  Custom Role Cloud Security Admin IAM Binding Service Account
*/ ###########################################################

module "cloud-security-admin-folder-level-binding" { # Folder Level Binding
  source = "../../modules/iam/iam-member-binding"

  target_level = "folder"
  org_id       = var.org_id
  folder_id    = var.root_folder_id
  role_id      = "org_security_admin"
  members      = var.cloud-security-admin-project-level-sa-binding-members
  depends_on = [
    module.cloud-security-admin
  ]
}

/*####################################
  Custom Role Cloud Security Poweruser
*/ ####################################

module "cloud-security-poweruser-binding" {
  source = "../../modules/iam/iam-member-binding"

  target_level = "org"
  org_id       = var.org_id
  role_id      = "org_security_poweruser"
  members      = var.cloud-security-poweruser-binding-members
  depends_on = [
    module.cloud-security-poweruser
  ]
}

/*##################################
  Custom Role Infosec Audit
*/ ##################################

module "infosec-audit-binding" {
  source = "../../modules/iam/iam-member-binding"

  target_level = "org"
  org_id       = var.org_id
  role_id      = "org_infosecaudit_viewer"
  members      = var.infosec-audit-binding-members
  depends_on = [
    module.infosec-audit
  ]
}

/*##################################
  Custom Role IAM Admin IAM Binding
*/ #################################

module "iam-admin-project-level-binding" {
  source = "../../modules/iam/iam-member-binding"

  target_level = "project"
  org_id       = var.org_id
  project_id   = var.project_id
  role_id      = "org_iam_admin"
  members      = var.iam-admin-project-level-binding-members
  depends_on = [
    module.iam-admin
  ]
}

/*##################################################
  Custom Role IAM Admin IAM Binding Service Account
*/ #################################################

module "iam-admin-folder-level-binding" { # Folder level binding
  source = "../../modules/iam/iam-member-binding"

  target_level = "folder"
  org_id       = var.org_id
  folder_id    = var.root_folder_id
  role_id      = "org_iam_admin"
  members      = var.iam-admin-folder-level-sa-binding-members
  depends_on = [
    module.iam-admin
  ]
}

/*##################################
  Custom Role IAM Poweruser
*/ ##################################

module "iam-poweruser-binding" {
  source = "../../modules/iam/iam-member-binding"

  target_level = "org"
  org_id       = var.org_id
  role_id      = "org_iam_poweruser"
  members      = var.iam-poweruser-binding-members
  depends_on = [
    module.iam-poweruser
  ]
}

/*##################################################
  Custom Role Network Security Eng Admin IAM Binding
*/ #################################################

module "network-security-eng-admin-project-level-binding" {
  source = "../../modules/iam/iam-member-binding"

  target_level = "project"
  org_id       = var.org_id
  project_id   = var.project_id
  role_id      = "org_netsec_admin"
  members      = var.network-security-eng-admin-project-level-binding-members
  depends_on = [
    module.network-security-eng-admin
  ]
}

/*##################################################################
  Custom Role Network Security Eng Admin IAM Binding Service Account
*/ ##################################################################

module "network-security-eng-admin-folder-level-binding" { # Folder level binding
  source = "../../modules/iam/iam-member-binding"

  target_level = "folder"
  org_id       = var.org_id
  folder_id    = var.root_folder_id
  role_id      = "org_netsec_admin"
  members      = var.network-security-eng-admin-folder-level-sa-binding-members
  depends_on = [
    module.network-security-eng-admin
  ]
}

/*##########################################
  Custom Role Network Security Eng poweruser
*/ ##########################################

module "network-security-eng-poweruser-binding" {
  source = "../../modules/iam/iam-member-binding"

  target_level = "org"
  org_id       = var.org_id
  role_id      = "org_netsec_poweruser"
  members      = var.network-security-eng-poweruser-binding
  depends_on = [
    module.network-security-eng-poweruser
  ]
}

/*##################################
  Custom Role SIEM Admin IAM Binding
*/ #################################

module "siem-admin-project-level-binding" {
  source = "../../modules/iam/iam-member-binding"

  target_level = "project"
  org_id       = var.org_id
  project_id   = var.project_id
  role_id      = "org_siem_admin"
  members      = var.siem-admin-project-level-binding-members
  depends_on = [
    module.siem-admin
  ]
}

/*###################################################
  Custom Role SIEM Admin IAM Binding Service Account
*/ ##################################################

module "siem-admin-folder-level-binding" { #Folder level binding
  source = "../../modules/iam/iam-member-binding"

  target_level = "folder"
  org_id       = var.org_id
  folder_id    = var.root_folder_id
  role_id      = "org_siem_admin"
  members      = var.siem-admin-folder-level-sa-binding-members
  depends_on = [
    module.siem-admin
  ]
}

/*##################################
  Custom Role SIEM Poweruser
*/ ##################################


module "siem-poweruser-binding" {
  source = "../../modules/iam/iam-member-binding"

  target_level = "org"
  org_id       = var.org_id
  role_id      = "org_siem_poweruser"
  members      = var.siem-poweruser-binding-members
  depends_on = [
    module.siem-poweruser
  ]
}

/*#################################
  Custom Role IR Admin IAM Binding
*/ ################################

module "ir-admin-project-level-binding" {
  source = "../../modules/iam/iam-member-binding"

  target_level = "project"
  org_id       = var.org_id
  project_id   = var.project_id
  role_id      = "org_ir_admin"
  members      = var.ir-admin-project-level-binding-members
  depends_on = [
    module.ir-admin
  ]
}

/*###################################################
  Custom Role IR Admin IAM Binding Service Account
*/ ##################################################

module "ir-admin-folder-level-binding" { # Folder level binding
  source = "../../modules/iam/iam-member-binding"

  target_level = "folder"
  org_id       = var.org_id
  folder_id    = var.root_folder_id
  role_id      = "org_ir_admin"
  members      = var.ir-admin-folder-level-sa-binding-members
  depends_on = [
    module.ir-admin
  ]
}

/*##################################
  Custom Role IR Poweruser
*/ ##################################

module "ir-poweruser-binding" {
  source = "../../modules/iam/iam-member-binding"

  target_level = "org"
  org_id       = var.org_id
  role_id      = "org_ir_poweruser"
  members      = var.ir-poweruser-binding-members
  depends_on = [
    module.ir-poweruser
  ]
}

/*####################################
  Custom Role Crypto Admin IAM Binding
*/ ###################################

module "crypto-admin-project-level-binding" {
  source = "../../modules/iam/iam-member-binding"

  target_level = "project"
  org_id       = var.org_id
  project_id   = var.project_id
  role_id      = "org_crypto_admin"
  members      = var.crypto-admin-project-level-binding-members
  depends_on = [
    module.crypto-admin
  ]
}

/*####################################################
  Custom Role Crypto Admin IAM Binding Service Account
*/ ###################################################

module "crypto-admin-folder-level-binding" { # Folder level binding
  source = "../../modules/iam/iam-member-binding"

  target_level = "folder"
  org_id       = var.org_id
  folder_id    = var.root_folder_id
  role_id      = "org_crypto_admin"
  members      = var.crypto-admin-folder-level-sa-binding-members
  depends_on = [
    module.crypto-admin
  ]
}

/*##################################
  Custom Role Crypto Poweruser
*/ ##################################

/*module "crypto-poweruser" {
  source = "../../../modules/iam/iam-custom-role"

  target_level = "org"
  org_id       = var.org_id
  role_id      = "org_crypto_poweruser" 
  members      = var.crypto-poweruser-members
  depends_on   = [
    module.crypto-poweruser
  ]
}
  
}*/

/*#################################
  Custom Role DDI Admin IAM Binding
*/ ################################


module "ddi-admin-project-level-binding" {
  source = "../../modules/iam/iam-member-binding"

  target_level = "project"
  org_id       = var.org_id
  project_id   = var.project_id
  role_id      = "org_ddi_admin"
  members      = var.ddi-admin-project-level-binding-members
  depends_on = [
    module.ddi-admin
  ]
}

/*####################################################
  Custom Role DDI Admin IAM Binding Service Account
*/ ###################################################

module "ddi-admin-folder-level-binding" { # Folder level binding
  source = "../../modules/iam/iam-member-binding"

  target_level = "folder"
  org_id       = var.org_id
  folder_id    = var.root_folder_id
  role_id      = "org_ddi_admin"
  members      = var.ddi-admin-folder-level-sa-binding-members
  depends_on = [
    module.ddi-admin
  ]
}

/*##################################
  Custom Role DDI poweruser
*/ ##################################

module "ddi-poweruser-binding" {
  source = "../../modules/iam/iam-member-binding"

  target_level = "org"
  org_id       = var.org_id
  role_id      = "org_ddi_poweruser"
  members      = var.ddi-poweruser-binding-members
  depends_on = [
    module.ddi-poweruser
  ]
}

/*######################################
  Custom Role Billing Admin IAM Binding
*/ #####################################

module "billing-admin-project-level-binding" {
  source = "../../modules/iam/iam-member-binding"

  target_level = "project"
  org_id       = var.org_id
  project_id   = var.project_id
  role_id      = "org_billing_admin"
  members      = var.billing-admin-project-level-binding-members
  depends_on = [
    module.billing-admin
  ]
}

/*####################################################
  Custom Role Billing Admin IAM Binding Service Account
*/ ###################################################

module "billing-admin-folder-level-binding" { #Folder level binding
  source = "../../modules/iam/iam-member-binding"

  target_level = "folder"
  org_id       = var.org_id
  folder_id    = var.root_folder_id
  role_id      = "org_billing_admin"
  members      = var.billing-admin-folder-level-sa-binding-members
  depends_on = [
    module.billing-admin
  ]
}

/*##################################
  Custom Role Billing Poweruser
*/ ##################################

module "billing-poweruser-binding" {
  source = "../../modules/iam/iam-member-binding"

  target_level = "org"
  org_id       = var.org_id
  role_id      = "org_billing_viewer"
  members      = var.billing-poweruser-binding-members
  depends_on = [
    module.billing-poweruser
  ]
}

/*#####################################
  Custom Role Network Admin IAM Binding
*/ ####################################

module "network-admin-project-level-binding" {
  source = "../../modules/iam/iam-member-binding"

  target_level = "project"
  org_id       = var.org_id
  project_id   = var.project_id
  role_id      = "org_network_admin"
  members      = var.network-admin-project-level-binding-members
  depends_on = [
    module.network-admin
  ]
}

/*####################################################
  Custom Role Network Admin IAM Binding Service Account
*/ ###################################################

module "network-admin-folder-level-binding" { #Folder level binding
  source = "../../modules/iam/iam-member-binding"

  target_level = "folder"
  org_id       = var.org_id
  folder_id    = var.root_folder_id
  role_id      = "org_network_admin"
  members      = var.network-admin-folder-level-sa-binding-members
  depends_on = [
    module.network-admin
  ]
}

/*##################################
  Custom Role Network Poweruser
*/ ##################################

module "network-poweruser-binding" {
  source = "../../modules/iam/iam-member-binding"

  target_level = "org"
  org_id       = var.org_id
  role_id      = "org_network_poweruser"
  members      = var.network-poweruser-binding-members
  depends_on = [
    module.network-poweruser
  ]
}

/*#################################################
  Custom Role CloudSoultions Poweruser IAM Binding
*/ ################################################

module "cloudsolutions-poweruser-binding" {
  source = "../../modules/iam/iam-member-binding"

  target_level = "org"
  org_id       = var.org_id
  role_id      = "org_solutions_pu"
  members      = var.cloudsolutions-poweruser-binding-members
  depends_on = [
    module.cloudsolutions-poweruser
  ]
}

/*####################################################
  Custom Role CloudSoultions Poweruser IAM Binding Service Account
*/ ###################################################

module "cloudsolutions-poweruser-folder-level-binding" { #Folder level binding
  source = "../../modules/iam/iam-member-binding"

  target_level = "folder"
  org_id       = var.org_id
  folder_id    = var.root_folder_id
  role_id      = "org_solutions_pu"
  members      = var.cloudsolutions-poweruser-folder-level-sa-binding-members
  depends_on = [
    module.cloudsolutions-poweruser
  ]
}

/*#########################################
  Custom Role CloudQE Poweruser IAM Binding
*/ ########################################

module "cloudqe-poweruser-binding" {
  source = "../../modules/iam/iam-member-binding"

  target_level = "org"
  org_id       = var.org_id
  role_id      = "org_quality_pu"
  members      = var.cloudqe-poweruser-binding-members
  depends_on = [
    module.cloudqe-poweruser
  ]
}

/*##########################################################
  Custom Role CloudQE Poweruser IAM Binding Service Account
*/ #########################################################

module "cloudqe-poweruser-folder-level-binding" { #Folder level binding
  source = "../../modules/iam/iam-member-binding"

  target_level = "folder"
  org_id       = var.org_id
  folder_id    = var.root_folder_id
  role_id      = "org_quality_pu"
  members      = var.cloudqe-poweruser-folder-level-sa-binding-members
  depends_on = [
    module.cloudqe-poweruser
  ]
}

/*##########################################
  Custom Role Product Poweruser IAM Binding
*/ #########################################


module "product-poweruser-binding" {
  source = "../../modules/iam/iam-member-binding"

  target_level = "org"
  org_id       = var.org_id
  role_id      = "org_product_pu"
  members      = var.product-poweruser-binding-members
  depends_on = [
    module.product-poweruser
  ]
}

/*##########################################################
  Custom Role Product Poweruser IAM Binding Service Account
*/ #########################################################

module "product-poweruser-folder-level-binding" { #Folder level binding
  source = "../../modules/iam/iam-member-binding"

  target_level = "folder"
  org_id       = var.org_id
  folder_id    = var.root_folder_id
  role_id      = "org_product_pu"
  members      = var.product-poweruser-folder-level-sa-binding-members
  depends_on = [
    module.product-poweruser
  ]
}

/*#######################################
  Custom Role CloudEng Admin IAM Binding
*/ ######################################


module "cloudeng-admin-binding" {
  source = "../../modules/iam/iam-member-binding"

  target_level = "org"
  org_id       = var.org_id
  role_id      = "org_corefoundation_admin"
  members      = var.cloudeng-admin-binding-members
  depends_on = [
    module.cloudeng-admin
  ]
}

/*######################################################
  Custom Role CloudEng Admin IAM Binding Service Account
*/ #####################################################

module "cloudeng-admin-folder-level-binding" { # Folder level binding
  source = "../../modules/iam/iam-member-binding"

  target_level = "folder"
  org_id       = var.org_id
  folder_id    = var.root_folder_id
  role_id      = "org_corefoundation_admin"
  members      = var.cloudeng-admin-folder-level-sa-binding-members
  depends_on = [
    module.crypto-admin
  ]
}

/*##################################
  Custom Role CloudEng Poweruser
*/ ##################################

module "cloudeng-poweruser-binding" {
  source = "../../modules/iam/iam-member-binding"

  target_level = "org"
  org_id       = var.org_id
  role_id      = "org_corefoundation_poweruser"
  members      = var.cloudeng-poweruser-binding-members
  depends_on = [
    module.cloudeng-powersuer
  ]
}

// Custome Roles/Permissions should be specified in iam-org-custome-role 
/*#######################################
  Custom Role CloudOps Admin IAM Binding
*/ ######################################

## Need more information on which specific resource, team should have access and should it be limited to read-only. 

/*module "cloudops-admin-project-level-binding" {
  source = "../../modules/iam/iam-member-binding"

  target_level = "project"
  org_id       = var.org_id
  project_id   = var.project_id
  role_id      =  "org_cloudops_admin"
  members      = var.cloudops-admin-project-level-binding-members
  depends_on   = [
    module.cloudops-admin
  ]
}*/

/*######################################################
  Custom Role CloudOps Admin IAM Binding Service Account
*/ #####################################################

## Need more information on which specific resource, team should have access and should it be limited to read-only. 

/*
module "cloudops-admin-folder-level-binding" {                  # Folder level binding
  source = "../../modules/iam/iam-member-binding"

  target_level = "folder"
  org_id       = var.org_id
  folder_id    = var.root_folder_id
  role_id      = "org_cloudops_admin"
  members      = var.cloudops-admin-folder-level-sa-binding-members
  depends_on   = [
    module.cloudops-admin
  ]                                            
}
*/

// Custome Roles/Permissions should be specified in iam-org-custome-role.tf 
/*####################################
  Custom Role CloudOps Poweruser
*/ ####################################


/*module "cloudops-poweruser-binding" {
  source = "../../modules/iam/iam-member-binding"

  target_level = "org"
  org_id       = var.org_id
  role_id      = "org_cloudops_poweruser"
  members      = var.cloudops-poweruser-binding-members
  depends_on   = [
    module.cloudops-poweruser
  ]
}*/


// Custome Roles/Permissions should be specified in iam-org-custome-role.tf 
/*#######################################
  Custom Role CICD Poweruser IAM Binding
*/ ######################################

## Service accounts will be used to deploy resources. More details needed for which permissions are needed for power users?


/*module "cicd-poweruser-binding" {
  source = "../../modules/iam/iam-member-binding"

  target_level = "org"
  org_id       = var.org_id
  role_id      = "org_cicd_pu"
  members      = var.cicd-poweruser-binding-members
  depends_on   = [
    module.cicd-poweruser
  ]
}*/

/*######################################################
  Custom Role CICD Poweruser IAM Binding Service Account
*/ #####################################################

## Service accounts will be used to deploy resources. More details needed for which permissions are needed for power users?

/*
module "cicd-poweruser-folder-level-binding" {                  # Folder level binding
  source = "../../modules/iam/iam-member-binding"

  target_level = "folder"
  org_id       = var.org_id
  folder_id    = var.root_folder_id
  role_id      = "org_cicd_pu"
  members      = var.cicd-poweruser-folder-level-sa-binding-members
  depends_on   = [
    module.cicd-poweruser
  ]                                            
}
*/

/*#######################################
  Custom Role Bigdata Admin IAM Binding
*/ ######################################

/*
module "bigdata-admin-project-level-binding" {
  source = "../../modules/iam/iam-member-binding"

  target_level = "project"
  org_id       = var.org_id
  project_id   = var.project_id
  role_id      = "org_bigdata_admin" # role id to be added here
  members      = var.bigdata-admin-project-level-binding-members
  depends_on = [
    module.bigdata-admin
  ]
}

module "bigdata-admin-folder-level-binding" { # Module to be enabled for folder level binding 
  source = "../../modules/iam/iam-member-binding"

  target_level = "folder"
  org_id       = var.org_id
  folder_id    = var.GI_Dev_Bigdata
  role_id      = "org_bigdata_admin" # role id to be added here
  members      = var.bigdata-admin-project-level-binding-members
  depends_on = [
    module.bigdata-admin
  ]
}
*/
/*######################################################
  Custom Role Bigdata Admin IAM Binding Service Account
*/ #####################################################

## Service accounts will be used to deploy resources. More details needed
/*
module "bigdata-admin-Dev-folder-level-sa-binding" { # Third Level Dev Big Data Folder Binding
  source = "../../modules/iam/iam-member-binding"

  target_level = "folder"
  org_id       = var.org_id
  folder_id    = var.GI_Dev_Bigdata
  role_id      = "org_bigdata_admin"
  members      = var.bigdata-admin-folder-level-sa-binding-members
  depends_on = [
    module.bigdata-admin
  ]
}

module "bigdata-admin-Prod-folder-level-sa-binding" { # Third Level Prod Big Data Folder Binding
  source = "../../modules/iam/iam-member-binding"

  target_level = "folder"
  org_id       = var.org_id
  folder_id    = var.GI_Prod_Bigdata
  role_id      = "org_bigdata_admin"
  members      = var.bigdata-admin-folder-level-sa-binding-members
  depends_on = [
    module.bigdata-admin
  ]
}

module "bigdata-admin-Test-folder-level-sa-binding" { # Third Level Test Big Data Folder Binding
  source = "../../modules/iam/iam-member-binding"

  target_level = "folder"
  org_id       = var.org_id
  folder_id    = var.GI_Test_Bigdata
  role_id      = "org_bigdata_admin"
  members      = var.bigdata-admin-folder-level-sa-binding-members
  depends_on = [
    module.bigdata-admin
  ]
}
*/

/*##########################################
  Custom Role Bigdata Developer IAM Binding
*/ #########################################
/*
module "bigdata-developer-project-level-binding" {
  source = "../../modules/iam/iam-member-binding"

  target_level = "project"
  org_id       = var.org_id
  project_id   = var.project_id
  role_id      = "org_bigdata_developer" # role id to be added here
  members      = var.bigdata-developer-project-level-binding-members
  depends_on = [
    module.bigdata-developer
  ]
}
*/

/*######################################################
  Custom Role Bigdata Developer IAM Binding Service Account
*/ #####################################################

## Service accounts will be used to deploy resources. More details needed
/*
module "bigdata-developer-Dev-folder-level-sa-binding" { # Third Level Dev Big Data Developer Folder Binding
  source = "../../modules/iam/iam-member-binding"

  target_level = "folder"
  org_id       = var.org_id
  folder_id    = var.GI_Dev_Bigdata
  role_id      = "org_bigdata_developer"
  members      = var.bigdata-developer-folder-level-sa-binding-members
  depends_on = [
    module.bigdata-developer
  ]
}

module "bigdata-developer-Prod-folder-level-sa-binding" { # Third Level Prod Big Data Developer Folder Binding
  source = "../../modules/iam/iam-member-binding"

  target_level = "folder"
  org_id       = var.org_id
  folder_id    = var.GI_Prod_Bigdata
  role_id      = "org_bigdata_developer"
  members      = var.bigdata-developer-folder-level-sa-binding-members
  depends_on = [
    module.bigdata-developer
  ]
}

module "bigdata-developer-Test-folder-level-sa-binding" { # Third Level Test Big Data Developer Folder Binding
  source = "../../modules/iam/iam-member-binding"

  target_level = "folder"
  org_id       = var.org_id
  folder_id    = var.GI_Test_Bigdata
  role_id      = "org_bigdata_developer"
  members      = var.bigdata-developer-folder-level-sa-binding-members
  depends_on = [
    module.bigdata-developer
  ]
}
*/






















