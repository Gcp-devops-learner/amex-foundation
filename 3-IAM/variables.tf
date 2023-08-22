# Copyright 2021 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose. Your use of it is subject to your agreement with Google.


variable "org_id" {
  description = "Name of the target id"
  type        = string
  default     = ""
}

variable "project_id" {
  type        = string
  description = "Variable for project or organization ID."
  default     = ""
}

variable "root_folder_id" {
  type        = string
  description = "Variable for project or organization ID."
  default     = ""
}

variable "GI_Dev_Bigdata" {
  type        = string
  description = "Variable for third level folder ID for Dev Bigdata."
  default     = ""
}

variable "GI_Prod_Bigdata" {
  type        = string
  description = "Variable for third level folder ID for Prod Bigdata."
  default     = ""
}

variable "GI_Test_Bigdata" {
  type        = string
  description = "Variable for third level folder ID for Test Bigdata."
  default     = ""
}

variable "eng_folder_id" {
  type        = string
  description = "Variable for project or organization ID."
  default     = ""
}

variable "dev_folder_id" {
  type        = string
  description = "Variable for project or organization ID."
  default     = ""
}


variable "cloud-security-admin-permissions" {
  type        = list(string)
  description = "cloud-security-admin-permissions"
}

variable "cloud-security-poweruser-permissions" {
  type        = list(string)
  description = "cloud-security-poweruser-permissions"
}

variable "iam-admin-permissions" {
  type        = list(string)
  description = "iam-admin-permissions"
}

variable "iam-poweruser-permissions" {
  description = "List Of Permissions for iam-poweruser-permission"
  type        = list(string)
}

variable "network-security-eng-admin-permissions" {
  type        = list(string)
  description = "network-security-eng-admin-permissions"
}

variable "network-security-eng-poweruser-permissions" {
  description = "List Of Permissions for network-security-eng-poweruser-permissions"
  type        = list(string)
}

variable "siem-admin-permissions" {
  type        = list(string)
  description = "siem-admin-permissions"
}

variable "siem-poweruser-permissions" {
  description = "List Of Permissions for siem-poweruser-permissions"
  type        = list(string)
}

variable "ir-admin-permissions" {
  type        = list(string)
  description = "ir-admin-permissions"
}

variable "ir-poweruser-permissions" {
  description = "List Of Permissions for ir-poweruser-permissions"
  type        = list(string)
}


variable "crypto-admin-permissions" {
  type        = list(string)
  description = "crypto-admin-permissions"
}

/*
variable "crypto-poweruser-permissions" {
  description = "List Of Permissions for crypto-poweruser-permissions"
  type        = list(string)
}
*/

variable "ddi-admin-permissions" {
  type        = list(string)
  description = "ddi-admin-permissions"
}

variable "ddi-poweruser-permissions" {
  description = "List Of Permissions for ddi-poweruser-permissions "
  type        = list(string)
}


variable "billing-admin-permissions" {
  type        = list(string)
  description = "billing-admin-permissions"
}

variable "billing-poweruser-permissions" {
  description = "List Of Permissions for billing-poweruser"
  type        = list(string)
}

variable "network-admin-permissions" {
  type        = list(string)
  description = "network-admin-permissions"
}

variable "network-poweruser-permissions" {
  description = "List Of Permissions for network-poweruser"
  type        = list(string)
}



variable "org_infosecaudit_viewer_permissions" {
  description = "List Of Permissions for org_infosecaudit_viewer_permissions "
  type        = list(string)
}

/*
variable "cloudops-admin-permissions" {
  description = "List Of Permissions for cloudops-admin-permissions"
  type        = list(string)
}
*/

/*
variable "cloudops-poweruser-permissions" {
  description = "List Of Permissions for cloudops-poweruser-permissions"
  type        = list(string)
}
*/

/*
variable "cicd-poweruser-permissions" {
  description = "List Of Permissions for cicd-poweruser-permissions"
  type        = list(string)
}
*/



variable "cloudsolutions-poweruser-permissions" {
  type        = list(string)
  description = "cloudsolutions-poweruser-permissions"
}

variable "cloudqe-poweruser-permissions" {
  type        = list(string)
  description = "cloudqe-poweruser-permissions"
}

variable "product-poweruser-permissions" {
  description = "List Of Permissions for product-poweruser "
  type        = list(string)
}

variable "cloudeng-admin-permissions" {
  description = "List Of Permissions for cloudeng-admin"
  type        = list(string)
}

variable "cloudeng-powersuer-permissions" {
  description = "List Of Permissions for cloudeng-powersuer"
  type        = list(string)
}

variable "cicd-poweruser-binding-members" {
  description = "List Of Permissions for cicd-poweruser-binding-members"
  type        = list(string)
}
/*
variable "cicd-poweruser-folder-level-sa-binding-members" {
  description = "List Of Permissions for cicd-poweruser-folder-level-sa-binding-members"
  type        = list(string)
}
*/

variable "cloudops-poweruser-binding-members" {
  description = "List Of Permissions for cloudops-poweruser-binding-members"
  type        = list(string)
}
variable "cloudops-admin-project-level-binding-members" {
  description = "List Of Permissions for cloudops-admin-project-level-binding-members"
  type        = list(string)
}

/*
variable "cloudops-admin-folder-level-sa-binding-members" {
  description = "List Of Permissions for cloudops-admin-folder-level-sa-binding-members"
  type        = list(string)
}

*/
variable "cloudeng-poweruser-binding-members" {
  description = "List Of Permissions for cloudeng-poweruser-binding-members"
  type        = list(string)
}
variable "cloudeng-admin-binding-members" {
  description = "List Of Permissions for cloudeng-admin-binding-members"
  type        = list(string)
}


variable "cloudeng-admin-folder-level-sa-binding-members" {
  description = "List Of Permissions for cloudeng-admin-folder-level-sa-binding-members"
  type        = list(string)
}

variable "product-poweruser-binding-members" {
  description = "List Of Permissions for product-poweruser-binding-members"
  type        = list(string)
}



variable "product-poweruser-folder-level-sa-binding-members" {
  description = "List Of Permissions for product-poweruser-folder-level-sa-binding-members"
  type        = list(string)
}


variable "cloudqe-poweruser-binding-members" {
  description = "List Of Permissions for cloudqe-poweruser-binding-members"
  type        = list(string)
}


variable "cloudqe-poweruser-folder-level-sa-binding-members" {
  description = "List Of Permissions for cloudqe-poweruser-folder-level-sa-binding-members"
  type        = list(string)
}



variable "cloudsolutions-poweruser-binding-members" {
  description = "List Of Permissions for cloudsolutions-poweruser-binding-members"
  type        = list(string)
}


variable "cloudsolutions-poweruser-folder-level-sa-binding-members" {
  description = "List Of Permissions for cloudsolutions-poweruser-folder-level-sa-binding-members"
  type        = list(string)
}


variable "network-poweruser-binding-members" {
  description = "List Of Permissions for network-poweruser-binding-members"
  type        = list(string)
}
variable "network-admin-project-level-binding-members" {
  description = "List Of Permissions for network-admin-project-level-binding-members"
  type        = list(string)
}



variable "network-admin-folder-level-sa-binding-members" {
  description = "List Of Permissions for network-admin-folder-level-sa-binding-members"
  type        = list(string)
}

variable "billing-poweruser-binding-members" {
  description = "List Of Permissions for billing-poweruser-binding-members"
  type        = list(string)
}
variable "billing-admin-project-level-binding-members" {
  description = "List Of Permissions for billing-admin-project-level-binding-members"
  type        = list(string)
}


variable "billing-admin-folder-level-sa-binding-members" {
  description = "List Of Permissions for billing-admin-folder-level-sa-binding-members"
  type        = list(string)
}

variable "ddi-poweruser-binding-members" {
  description = "List Of Permissions for ddi-poweruser-binding-members"
  type        = list(string)
}

variable "ddi-admin-project-level-binding-members" {
  description = "List Of Permissions for ddi-admin-project-level-binding-members"
  type        = list(string)
}


variable "ddi-admin-folder-level-sa-binding-members" {
  description = "List Of Permissions for ddi-admin-folder-level-sa-binding-members"
  type        = list(string)
}



variable "crypto-poweruser-members" {
  description = "List Of Permissions for crypto-poweruser-members"
  type        = list(string)
}
variable "crypto-admin-project-level-binding-members" {
  description = "List Of Permissions for crypto-admin-project-level-binding-members"
  type        = list(string)
}

variable "crypto-admin-folder-level-sa-binding-members" {
  description = "List Of Permissions for crypto-admin-folder-level-sa-binding-members"
  type        = list(string)
}


variable "ir-poweruser-binding-members" {
  description = "List Of Permissions for ir-poweruser-binding-members"
  type        = list(string)
}
variable "ir-admin-project-level-binding-members" {
  description = "List Of Permissions for ir-admin-project-level-binding-members"
  type        = list(string)
}

variable "ir-admin-folder-level-sa-binding-members" {
  description = "List Of Permissions for ir-admin-folder-level-sa-binding-members"
  type        = list(string)
}

variable "siem-poweruser-binding-members" {
  description = "List Of Permissions for siem-poweruser-binding-members"
  type        = list(string)
}
variable "siem-admin-project-level-binding-members" {
  description = "List Of Permissions for siem-admin-project-level-binding-members"
  type        = list(string)
}



variable "siem-admin-folder-level-sa-binding-members" {
  description = "List Of Permissions for siem-admin-folder-level-sa-binding-members"
  type        = list(string)
}

variable "network-security-eng-poweruser-binding" {
  description = "List Of Permissions for network-security-eng-poweruser-binding"
  type        = list(string)
}
variable "network-security-eng-admin-project-level-binding-members" {
  description = "List Of Permissions for network-security-eng-admin-project-level-binding-members"
  type        = list(string)
}


variable "network-security-eng-admin-folder-level-sa-binding-members" {
  description = "List Of Permissions for network-security-eng-admin-folder-level-sa-binding-members"
  type        = list(string)
}


variable "iam-poweruser-binding-members" {
  description = "List Of Permissions for iam-poweruser-binding-members"
  type        = list(string)
}
variable "iam-admin-project-level-binding-members" {
  description = "List Of Permissions for iam-admin-project-level-binding-members"
  type        = list(string)
}

variable "iam-admin-folder-level-sa-binding-members" {
  description = "List Of Permissions for iam-admin-folder-level-sa-binding-members"
  type        = list(string)
}

variable "infosec-audit-binding-members" {
  description = "List Of Permissions for infosec-audit-binding-members"
  type        = list(string)
}
variable "cloud-security-poweruser-binding-members" {
  description = "List Of Permissions for cloud-security-poweruser-binding-members"
  type        = list(string)
}
variable "cloud-security-admin-project-level-binding-members" {
  description = "List Of Permissions for cloud-security-admin-project-level-binding-members"
  type        = list(string)
}

variable "cloud-security-admin-project-level-sa-binding-members" {
  description = "List Of Permissions for cloud-security-admin-project-level-sa-binding-members"
  type        = list(string)
}
/*
variable "bigdata-admin-permissions" {
  type        = list(string)
  description = "bigdata-admin-permissions"
}


variable "bigdata-developer-permissions" {
  type        = list(string)
  description = "bigdata-developer-permissions"
}

variable "bigdata-admin-project-level-binding-members" {
  description = "List Of Permissions for bigdata-admin-project-level-binding-members"
  type        = list(string)
}

variable "bigdata-admin-folder-level-sa-binding-members" {
  description = "List Of Permissions for bigdata-admin-folder-level-sa-binding-members"
  type        = list(string)
}


variable "bigdata-developer-project-level-binding-members" {
  description = "List Of Permissions for bigdata-developer-project-level-binding-members"
  type        = list(string)
}

variable "bigdata-developer-folder-level-sa-binding-members" {
  description = "List Of Permissions for bigdata-developer-folder-level-sa-binding-members"
  type        = list(string)
}
*/

######### IAM Service Account Variables ##########

variable "prod_iam_project_id" {
  description = "var.prod_iam_project_id"
  type        = string
}

variable "dev_iam_project_id" {
  description = ""
  type        = string
}

variable "prod-tfe-service-accounts" {
  description = "List Of Prod TFE Service Accounts"
  type        = list(string)
}

variable "dev-tfe-service-accounts" {
  description = "List Of Dev TFE Service Accounts"
  type        = list(string)
}