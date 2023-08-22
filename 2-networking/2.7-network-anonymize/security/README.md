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

1. Change into network-anonymize security folder
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
| ranges | A list of source CIDR ranges that this firewall applies to. Can't be used for EGRESS | `any` | n/a | no |
| source_tags | A list of source tags for this firewall. Can't be used for EGRESS | `string` | `""` | no |
| target_tags |  A list of target tags for this firewall | `string` | `""`  | no | 
| direction | Direction of traffic to which this firewall applies; One of INGRESS or EGRESS. Defaults to INGRESS | `string` | `""`  | no | 
| destination_ranges | A list of destination CIDR ranges that this firewall applies to. Can't be used for INGRESS | `string` | `""`  | no | 
| source_service_accounts | A list of service accounts such that the firewall will apply only to traffic originating from an instance with a service account in this list | `string` | `""`  | no |
| target_service_accounts |  A list of service accounts indicating sets of instances located in the network that may make network connections as specified in allow. target_service_accounts cannot be used at the same time as source_tags or target_tags. If neither target_service_accounts nor target_tags are specified, the firewall rule applies to all instances on the specified network | `string` | `""`  | no |                
| host\_project\_id | Project id of the shared VPC host project. | `string` | n/a | yes |
| service\_project\_ids | Ids of the service projects that will be attached to the Shared VPC. | `list(string)` | n/a | yes |
| route\_names | The route names associated with this VPC | `string` | n/a | yes |
| route\_priority | The route priority associated with this VPC |  `string` | `"100"` | yes |
| route\_dest_ip | The route dest_ip associated with this VPC | `string` | n/a | yes |



<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->



<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

### Route Inputs


| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| name | The name of the route being created  | string | - | no |
| description | The description of the route being created | string | - | no |
| tags | The network tags assigned to this route. This is a list in string format. Eg. "tag-01,tag-02"| string | - | yes |
| destination\_range | The destination range of outgoing packets that this route applies to. Only IPv4 is supported | string | - | yes
| next\_hop\_internet | Whether the next hop to this route will the default internet gateway. Use "true" to enable this as next hop | string | `"false"` | yes |
| priority | The priority of this route. Priority is used to break ties in cases where there is more than one matching route of equal prefix length. In the case of two routes with equal prefix length, the one with the lowest-numbered priority value wins | string | `"1000"` | yes |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
