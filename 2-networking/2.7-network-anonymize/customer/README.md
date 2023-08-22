# Network Anonymize

# Purpose and Resources provisioned


#### CFT Module versions

| Name | version | 
|------|:-------------:|
| terraform-google-modules/project-factory/google | ~> 10.3 | 

## Prerequisites
- **Software**
   - [Terraform](https://www.terraform.io/downloads.html) >= 0.15.0.
- **Service account**
	- use the service account "<service account name>"@project_id.iam.gserviceaccount.com that was created during the provisioning of the booststrap.
- **Permissions**
	- The service account mentioned to be used for this provisioning has already assigned these permissions in the preceeding deployments. 
		
## Steps for provisioning the resources using this code

1. Change into network-anonymize customer folder
2. Run `terraform init`
3. Run `terraform plan` and review output
4. Run `terraform apply`



<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| description | An optional description of this resource. The resource must be recreated to modify this field. | `string` | `""` | no |
| network\_name | The name of the network being created | `any` | n/a | yes |
| project\_id | The ID of the project where this VPC will be created | `any` | n/a | yes |
| subnets | The list of subnets being created | `list(map(string))` | n/a | yes |
| host\_project\_id | Project id of the shared VPC host project. | `string` | n/a | yes |
| service\_project\_ids | Ids of the service projects that will be attached to the Shared VPC. | `list(string)` | n/a | yes |

               

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->



<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->


## Outputs


| Name | Description |
|------|-------------|
| network\_name | The name of the VPC being created |
| project\_id | VPC project id |
| subnets | A map with keys of form subnet\_region/subnet\_name and values being the outputs of the google\_compute\_subnetwork resources used to create corresponding subnets. |
| subnets\_flow\_logs | Whether the subnets will have VPC flow logs enabled |
| subnets\_ids | The IDs of the subnets being created |
| subnets\_ips | The IPs and CIDRs of the subnets being created |
| subnets\_names | The names of the subnets being created |
| subnets\_private\_access | Whether the subnets will have access to Google API's without a public IP |
| subnets\_regions | The region where the subnets will be created |


<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
