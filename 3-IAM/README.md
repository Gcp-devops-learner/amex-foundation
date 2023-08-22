# Google IAM Terraform Module

## Module Features

A Terraform CFT module for creating a `google_iam_custom_role` resources that allows management of a customized Cloud IAM role.
  
## Purpose and Resources provisioned


The purpose of this step is to create the following resources 

## CFT Module versions for Project

| Name | version | 
|------|:-------------:|
| terraform-google-modules/project-factory/google | ~> 10.3

## Prerequisites
- **Software**
   - [Terraform](https://www.terraform.io/downloads.html)  0.15.0
- **Previous module**
   - Ensure that the boostrap module is provisioned before trying to provision this module.
- **Service account**
	- use the service account "<service account name>"@project_id.iam.gserviceaccount.com that was created during the provisioning of the booststrap.
- **Permissions**
	- The service account mentioned to be used for this provisioning has already assigned these permissions in the preceeding deployments. 


## Steps for provisioning the resources using this code

1. Change into IAM folder
2. Run `terraform init`
3. Run `terraform plan and review output
4. Run `terraform apply


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| description | A human-readable description for the role. | `string` | `"Managed by Terraform"` | no |
| organizations | Organizations list to add the IAM policies/bindings | `list(string)` | `[]` | no |
| org\_id | Id of the organization for org-level roles. | `string` | `""` | yes |
| role\_id | ID of the Custom Role. | `string` | n/a | yes |
| folder\_id | Folder ID within the Organization: e.g. 1234567898765 | `string` | `""` | no |
| target\_id | Variable for project or organization ID. | `string` | n/a | yes |
| target\_level | String variable to denote if custom role being created is at project or organization level. | `string` | `"project"` | no |
| base\_roles | List of base predefined roles to use to compose custom role. | `list(string)` | `[]` | no |
| permissions | IAM permissions assigned to Custom Role. | `list(string)` | n/a | yes |
| bindings | Map of role (key) and list of members (value) to add the IAM policies/bindings | `map(list(string))` | `{}` | no |
| prefix | Prefix applied to service account names. | `string` | `""` | no |
| project\_id | Project id where service account will be created. | `string` | n/a | yes |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Outputs

| Name | Description |
|------|-------------|
| members | Members which were bound to organizations. |
| organizations | Organizations which received bindings. |
| roles | Roles which were assigned to members. |
| folders | Folders which received bindings. |


<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->