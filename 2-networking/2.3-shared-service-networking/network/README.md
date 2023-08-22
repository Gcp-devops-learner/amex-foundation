# Shared Service Networking

# Purpose and Resources provisioned

The purpose of this step is to create the following resources

- **module shared-service-networking** creates customer network security

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

1. Change into shared-service-networking folder
2. Run `terraform init`
3. Run `terraform plan` and review output
4. Run `terraform apply`


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| auto\_create\_subnetworks | When set to true, the network is created in 'auto subnet mode' and it will create a subnet for each region automatically across the 10.128.0.0/9 address range. When set to false, the network is created in 'custom subnet mode' so the user can explicitly connect subnetwork resources. | `bool` | `false` | no |
| delete\_default\_internet\_gateway\_routes | If set, ensure that all routes within the network specified whose names begin with 'default-route' and with a next hop of 'default-internet-gateway' are deleted | `bool` | `false` | no |
| description | An optional description of this resource. The resource must be recreated to modify this field. | `string` | `""` | no |
| mtu | The network MTU. Must be a value between 1460 and 1500 inclusive. If set to 0 (meaning MTU is unset), the network will default to 1460 automatically. | `number` | `0` | no |
| network\_name | The name of the network being created | `any` | n/a | yes |
| project\_id | The ID of the project where this VPC will be created | `any` | n/a | yes |
| routing\_mode | The network routing mode (default 'GLOBAL') | `string` | `"GLOBAL"` | no |
| shared\_vpc\_host | Makes this project a Shared VPC host if 'true' (default 'false') | `bool` | `false` | no |
| host\_project\_id | Project id of the shared VPC host project. | `string` | n/a | yes |
| service\_project\_ids | Ids of the service projects that will be attached to the Shared VPC. | `list(string)` | n/a | yes |

               

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Outputs

| Name | Description |
|------|-------------|
| network\_name | The name of the VPC being created |
| project\_id | VPC project id |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->