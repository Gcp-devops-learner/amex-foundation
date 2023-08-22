# 0-bootstrap

The purpose of this step is to bootstrap a GCP organization, creating all the required resources & permissions to start using the Cloud Foundation Toolkit (CFT). 

## Prerequisites

1. A GCP [Organization](https://cloud.google.com/resource-manager/docs/creating-managing-organization)
2. A GCP [Billing Account](https://cloud.google.com/billing/docs/how-to/manage-billing-account)
3. Cloud Identity / G Suite groups for organization and billing admins
4. Membership in the `group_org_admins` group for user running terraform
5. Grant the roles mentioned in Permissions below, otherwise they will loose roles/resourcemanager.projectCreator access. Additional members can be added by using the org_project_creators variable.


### Permissions

- `roles/resourcemanager.organizationAdmin` on GCP Organization
- `roles/billing.admin` on supplied billing account
- `roles/resourcemanager.folderCreator` on the GCP organization
- `resourcemanager.projectCreator` on the GCP organization
- Account running terraform should be a member of group provided in `group_org_admins` variable.

## 0-bootstrap usage to provision resources

1. Change into 0-bootstrap folder
2. Copy tfvars by running `cp terraform.example.tfvars terraform.tfvars` and update `terraform.tfvars` with values from your environment.
3. Run `terraform init`
4. Run `terraform plan` and review output
5. Run `terraform apply`

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| org_id | GCP Organization ID | `string` | n/a | yes |
| billing_account | The ID of the billing account to associate projects with. | `string` | n/a | yes |
| group_org_admins | Google Group for GCP Organization Administrators | `string` | n/a | yes |
| default_region | Default region to create resources where applicable. | `string` | `"us-central1"` | no |
| organization| The prefix part applied to the GCP project names | `string` | n/a | yes |
| geo | The prefix part applied to the GCP project names | `string` | n/a | yes |
| env | The prefix part applied to the GCP project names | `string` | n/a | yes |
| project_labels | MAp of labels to be applied to the bootstrap project | `map` | n/a | no |
| activate_apis | List of APIs to enable in the seed project. | `list(string)` | ["compute.googleapis.com"] | no |
| sa_org_iam_permissions | List of permissions granted to Terraform service account across the GCP organization. | `list(string)` | [] | no |
| org_admins_org_iam_permissions | List of permissions granted to Group Org admins across the GCP organization. | `list(string)` | ["compute.googleapis.com"] | no |
| org_project_creators | Additional list of members to have project creator role across the organization. Prefix of group: user: or serviceAccount: is required. | `list(string)` | [] | no |

## Outputs

| Name | Description |
|------|-------------|
| seed_project_id | Project where service accounts and core APIs will be enabled. |
| terraform_sa_email | Email for privileged service account for Terraform. |
| terraform_sa_name | Fully qualified name for privileged service account for Terraform. |
| org_id | Organization ID |
| billing_account | Billing Account for Organization |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Requirements

### Software

- [gcloud sdk](https://cloud.google.com/sdk/install) >= 206.0.0
- [Terraform](https://www.terraform.io/downloads.html) >= 0.15.0
