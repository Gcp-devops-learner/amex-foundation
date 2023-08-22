# Purpose and Resources provisioned

The purpose of this step is to create the below resources

**Folders:**
1. Root level folders - Parent Org (fldr-gi folder)
2. First level folders - Parent Folder (fldr-prod, fldr-test, fldr-dev, fldr-engg, fldr-anonymized-data, fldr-shared-services)
3. Second level folders for Prod, Test and Dev environments- Parent Folder (fldr-p-bigdata, fldr-p-multi-tenant, fldr-p-ads, fldr-p-network, fldr-bigdata, fldr-t-multi-tenant, fldr-t-ads,fldr-np-network, fldr-d-bigdata, fldr-d-multi-tenant, fldr-d-ads)
4. Third level folders for Prod, Test and Dev environments- Parent Folder(fldr-p-data-warehouse, fldr-p-cfr, fldr-t-datawarehouse, fldr-t-cfr, fldr-d-datawarehouse, fldr-d-cfr)
5. Fourth level folders for Prod, Test and Dev environments - Parent Folder(fldr-p-analytical, fldr-t-analytical, fldr-d-analytical),


**Projects for Production:**

1. prj-p-databigquery
2. prj-p-ingestion
3. prj-p-dataquality
4. prj-p-posfrdmdl
5. prj-p-shared-vpc

**Projects for Test:**

1. prj-t-databigquery
2. prj-t-ingestion
3. prj-t-dataquality
4. prj-t-posfrdmdl
5. prj-np-shared-vpc

**Projects for Dev:**

1. prj-d-databigquery
2. prj-d-ingestion
3. prj-d-dataquality
4. prj-d-posfrdmdl

**Projects for Anonymized Data:**

1. prj-a-data-vpc

**Projects for Shared:**

1. prj-ss-shared-vpc



# Purpose and Resources provisioned


The purpose of this step is to create the following resources

- Prod and Non-Prod Folders structure and projects.



## CFT Module versions for Folder

| Name | version | 
|------|:-------------:|
| terraform-google-modules/folders/google | ~> 3.0 | 

## CFT Module versions for Project

| Name | version | 
|------|:-------------:|
| terraform-google-modules/project-factory/google | ~> 10.1 | 

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

1. Change into 1-org-structure folder
2. Run `terraform init`
3. Run `terraform plan -var-file=input.tfvars` and review output
4. Run `terraform apply -var-file=input.tfvars`

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## **Inputs for Folder**

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
|  environment  | Folder variables | `string` |  "" | no |
|  description  | Folder variables | `string` |  "" | yes |


## **Inputs for Project**

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
|  environment  | Project variables | `string` |  "" | yes |
|  description  | Project variables | `string` |  "" | yes |



## **Outputs for Folder**

| Name | Description |
|------|-------------|
| folders_map1 | Folder resources by name |


## **Outputs for Production Project-IDs**

| Name | Description |
|------|-------------|
| datawarehouse-project | Project resources by ID |
| ingestion-project     | Project resources by ID |
| dataquality-project   | Project resources by ID |
| posfrdmdl-project     | Project resources by ID |
| shared-vpc-project    | Project resources by ID |


## **Outputs for Test Project-IDs**

| Name | Description |
|------|-------------|
| datawarehouse-project | Project resources by ID |
| ingestion-project     | Project resources by ID |
| dataquality-project   | Project resources by ID |
| posfrdmdl-project     | Project resources by ID |
| shared-vpc-project    | Project resources by ID |


## **Outputs for Dev Project-IDs**

| Name | Description |
|------|-------------|
| datawarehouse-project | Project resources by ID |
| ingestion-project     | Project resources by ID |
| dataquality-project   | Project resources by ID |
| posfrdmdl-project     | Project resources by ID |


## **Outputs for Anonymized Data Project-IDs**

| Name | Description |
|------|-------------|
| data-vpc-project   | Project resources by ID |


## **Outputs for Shared Project-IDs**

| Name | Description |
|------|-------------|
| shared-vpc-project | Project resources by ID |


<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->



