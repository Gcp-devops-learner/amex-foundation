# Prod-Logging 

# Purpose and Resources provisioned

The purpose of this step is to create the following resources

- Prod-Logging project 


## Prerequisites
- **Software**
   - [Terraform](https://www.terraform.io/downloads.html) >= 0.15.0
- **Service account**
	- use the service account "<service account name>"@project_id.iam.gserviceaccount.com that was created during the provisioning of the booststrap.
- **Permissions**
	- The service account mentioned to be used for this provisioning has already assigned these permissions in the preceeding deployments. 

## Steps for provisioning the resources using this code

1. Change into prod-logging folder
2. Run `terraform init`
3. Run `terraform plan` and review output
4. Run `terraform apply`


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| force\_destroy | When deleting a bucket, this boolean option will delete all contained objects. | `bool` | `false` | no |
| location | The location of the storage bucket. | `string` | `"US"` | no |
| include\_children | Only valid if 'organization' or 'folder' is chosen as var.parent\_resource.type. Determines whether or not to include children organizations/folders in the sink export. If true, logs associated with child projects are also exported; otherwise only logs relating to the provided organization/folder are included. | `bool` | `false` | no |
| project\_id | The ID of the project in which the storage bucket will be created. | `string` | n/a | yes |
| storage\_bucket\_name | The name of the storage bucket to be created and used for log entries matching the filter. | `string` | n/a | yes |
| storage\_class | The storage class of the storage bucket. | `string` | `"STANDARD"` | no |
| uniform\_bucket\_level\_access | Enables Uniform bucket-level access to a bucket. | `bool` | `true` | no |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Outputs

| Name | Description |
|------|-------------|
| project | The project in which the storage bucket was created. |
| resource\_name | The resource name for the destination storage bucket |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->