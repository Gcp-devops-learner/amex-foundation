# Networking NonProd


# Purpose and Resources provisioned

The purpose of this step is to create the following resources

- **module nonprod-networking** creates network-nonprod-e0(lab)


#### CFT Module versions

| Name | version | 
|------|:-------------:|
| terraform-google-modules/project-factory/google | ~> 10.3 | 

## Prerequisites
- **Software**
   - [Terraform](https://www.terraform.io/downloads.html) >= 0.15.0
- **Service account**
	- use the service account "<service account name>"@project_id.iam.gserviceaccount.com that was created during the provisioning of the booststrap.
- **Permissions**
	- The service account mentioned to be used for this provisioning has already assigned these permissions in the preceeding deployments. 
		
## Steps for provisioning the resources using this code

1. Change into nonprod-networking customer folder
2. Run `terraform init`
3. Run `terraform plan` and review output
4. Run `terraform apply`



<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| description | An optional description of this resource. The resource must be recreated to modify this field. | `string` | `""` | no |
| network\_name | The name of the network being created through remote data it is being fetched form ipam tool | `any` | n/a | yes |
| project\_id | The ID of the project where this VPC will be created | `any` | n/a | yes |
| subnets | The list of subnets are being created through remote data it is being fetched form ipam tool | `list(map(string))` | n/a | yes |
| host\_project\_id | Project id of the shared VPC host project. | `string` | n/a | yes |
| service\_project\_ids | Ids of the service projects that will be attached to the Shared VPC. | `list(string)` | n/a | yes |


               

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->



<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->


## Outputs


| Name | Description |
|------|-------------|
| subnets\_ips | The IPs and CIDRs of the subnets being created |
| subnets\_names | The names of the subnets being created |
| subnets\_regions | The region where the subnets will be created |


<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
