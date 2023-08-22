# Network-shared-services-tunnels


# Purpose and Resources provisioned

## Prerequisites
- **Software**
   - [Terraform](https://www.terraform.io/downloads.html) >= 0.15.0
- **Service account**
	- use the service account "<service account name>"@project_id.iam.gserviceaccount.com that was created during the provisioning of the booststrap.
- **Permissions**
	- The service account mentioned to be used for this provisioning has already assigned these permissions in the preceeding deployments. 
		
## Steps for provisioning the resources using this code

1. Change into network-shared-services-tunnels folder
2. Run `terraform init`
3. Run `terraform plan` and review output
4. Run `terraform apply`


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| advertised\_route\_priority | Please enter the priority for the advertised route to BGP peer(default is 100) | `number` | `100` | no |
| gateway\_name | The name of VPN gateway | `string` | `"test-vpn"` | no |
| network | The name of VPC being created | `string` | n/a | yes |
| peer\_asn | Please enter the ASN of the BGP peer that cloud router will use | `list(string)` | <pre>[<br>  "65101"<br>]</pre> | no |
| peer\_ips | IP address of remote-peer/gateway | `list(string)` | n/a | yes |
| project\_id | The ID of the project where this VPC will be created | `string` | n/a | yes |
| region | The region in which you want to create the VPN gateway | `string` | n/a | yes |
| route\_tags | A list of instance tags to which this route applies. | `list(string)` | `[]` | no |
| shared\_secret | Please enter the shared secret/pre-shared key | `string` | `""` | no |
| vpn\_gw\_ip | Please enter the public IP address of the VPN Gateway, if you have already one. Do not set this variable to autocreate one | `string` | `""` | no |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Outputs

| Name | Description |
|------|-------------|
| gateway\_ip | The VPN Gateway Public IP |
| name | The name of the Gateway |
| project\_id | The Project-ID |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

