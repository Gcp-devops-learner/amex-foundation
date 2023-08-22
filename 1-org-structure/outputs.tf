# Copyright 2021 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose. Your use of it is subject to your agreement with Google.

output "folders_map1" {
  description = "Folder resources by name."
  value       = module.first_level_folder.folders_map
}
output "folders_map_prod" {
  description = "Folder resources by name."
  value       = module.second_level_folder_prod.folders_map
}

output "folders_map_dev" {
  description = "Folder resources by name."
  value       = module.second_level_folder_dev.folders_map
}

output "folders_map_test" {
  description = "Folder resources by name."
  value       = module.second_level_folder_test.folders_map
}

output "folders_map_eng" {
  description = "Folder resources by name."
  value       = module.second_level_folder_eng.folders_map
}


/* Root level project IDs */

output "root-rootorgvaldn-project-id" {
  description = "Project ID"
  value       = module.root-rootorgvaldn-project.project_id
}

/* Root level project number */

output "root-rootorgvaldn-project-number" {
  description = "Project ID"
  value       = module.root-rootorgvaldn-project.project_number
}



/* Prod project IDs */

output "prod-datawarehouse-project" {
  description = "Project ID"
  value       = module.prod-datawarehouse-project.project_id
}

output "prod-bq-admin-project" {
  description = "Project ID"
  value       = module.prod-bq-admin-project.project_id
}

output "prod-ingestion-project" {
  description = "Project ID"
  value       = module.prod-ingestion-project.project_id
}

output "prod-dataquality-project" {
  description = "Project ID"
  value       = module.prod-dataquality-project.project_id
}

output "prod-posfrdmdl-project" {
  description = "Project ID"
  value       = module.prod-posfrdmdl-project.project_id
}

output "prod-shared-vpc-project" {
  description = "Project ID"
  value       = module.prod-shared-vpc-project.project_id
}

output "prod-logging-project" {
  description = "Project ID"
  value       = module.prod-logging-project.project_id
}

output "prod-iam-project" {
  description = "Project ID"
  value       = module.prod-iam-project.project_id
}

/* Prod project Numbers */

output "prod-datawarehouse-project-numbers" {
  description = "Project ID"
  value       = module.prod-datawarehouse-project.project_number
}

output "prod-bq-admin-project-numbers" {
  description = "Project ID"
  value       = module.prod-bq-admin-project.project_number
}

output "prod-ingestion-project-numbers" {
  description = "Project ID"
  value       = module.prod-ingestion-project.project_number
}

output "prod-dataquality-project-numbers" {
  description = "Project ID"
  value       = module.prod-dataquality-project.project_number
}

output "prod-posfrdmdl-project-numbers" {
  description = "Project ID"
  value       = module.prod-posfrdmdl-project.project_number
}

output "prod-shared-vpc-project-numbers" {
  description = "Project ID"
  value       = module.prod-shared-vpc-project.project_number
}

output "prod-logging-project-numbers" {
  description = "Project ID"
  value       = module.prod-logging-project.project_number
}

output "prod-iam-project-numbers" {
  description = "Project ID"
  value       = module.prod-iam-project.project_number
}

/* Shared Projects */
output "shared-network-project" {
  description = "Project ID"
  value       = module.shared-network-project.project_id
}

output "shared-interconnect-project" {
  description = "Project ID"
  value       = module.shared-interconnect-project.project_id
}

output "anonymized-data-project" {
  description = "Project ID"
  value       = module.anonymized-data-project.project_id
}

/* Test Project IDs */

output "test-datawarehouse-project" {
  description = "Project ID"
  value       = module.test-datawarehouse-project.project_id
}

output "test-ingestion-project" {
  description = "Project ID"
  value       = module.test-ingestion-project.project_id
}

output "test-dataquality-project" {
  description = "Project ID"
  value       = module.test-dataquality-project.project_id
}

output "test-posfrdmdl-project" {
  description = "Project ID"
  value       = module.test-posfrdmdl-project.project_id
}

output "test-shared-vpc-project-l" {
  description = "Project ID"
  value       = module.test-shared-vpc-project-l.project_id
}

output "test-shared-vpc-project-d" {
  description = "Project ID"
  value       = module.test-shared-vpc-project-d.project_id
}

output "test-shared-vpc-project-t" {
  description = "Project ID"
  value       = module.test-shared-vpc-project-t.project_id
}

output "test-logging-project" {
  description = "Project ID"
  value       = module.test-logging-project.project_id
}

/* Test Project Numbers */

output "test-datawarehouse-project-numbers" {
  description = "Project ID"
  value       = module.test-datawarehouse-project.project_number
}

output "test-ingestion-project-numbers" {
  description = "Project ID"
  value       = module.test-ingestion-project.project_number
}

output "test-dataquality-project-numbers" {
  description = "Project ID"
  value       = module.test-dataquality-project.project_number
}

output "test-posfrdmdl-project-numbers" {
  description = "Project ID"
  value       = module.test-posfrdmdl-project.project_number
}

output "test-shared-vpc-project-l-numbers" {
  description = "Project ID"
  value       = module.test-shared-vpc-project-l.project_number
}

output "test-shared-vpc-project-d-numbers" {
  description = "Project ID"
  value       = module.test-shared-vpc-project-d.project_number
}

output "test-shared-vpc-project-t-numbers" {
  description = "Project ID"
  value       = module.test-shared-vpc-project-t.project_number
}


output "test-logging-project-numbers" {
  description = "Project ID"
  value       = module.test-logging-project.project_number
}

/* Dev Project IDs */

output "dev-datawarehouse-project" {
  description = "Project ID"
  value       = module.dev-datawarehouse-project.project_id
}

output "dev-ingestion-project" {
  description = "Project ID"
  value       = module.dev-ingestion-project.project_id
}

output "dev-dataquality-project" {
  description = "Project ID"
  value       = module.dev-dataquality-project.project_id
}

output "dev-posfrdmdl-project" {
  description = "Project ID"
  value       = module.dev-posfrdmdl-project.project_id
}

output "dev-logging-project" {
  description = "Project ID"
  value       = module.dev-logging-project.project_id
}

output "dev-iam-project" {
  description = "Project ID"
  value       = module.dev-iam-project.project_id
}

/* Dev Project Numbers */

output "dev-datawarehouse-project-number" {
  description = "Project ID"
  value       = module.dev-datawarehouse-project.project_number
}

output "dev-ingestion-project-number" {
  description = "Project ID"
  value       = module.dev-ingestion-project.project_number
}

output "dev-dataquality-project-number" {
  description = "Project ID"
  value       = module.dev-dataquality-project.project_number
}

output "dev-posfrdmdl-project-number" {
  description = "Project ID"
  value       = module.dev-posfrdmdl-project.project_number
}

output "dev-logging-project-number" {
  description = "Project ID"
  value       = module.dev-logging-project.project_number
}

output "dev-iam-project-number" {
  description = "Project ID"
  value       = module.dev-iam-project.project_number
}

/* Eng Projects IDs */
output "eng-poc-project" {
  description = "Project ID"
  value       = module.Eng-poc-project.project_id
}

output "eng-logging-project" {
  description = "Project ID"
  value       = module.Eng-poc-project-logging.project_id
}

output "eng-project-nw001" {
  description = "Project ID"
  value       = module.Eng-project-nw001.project_id
}

output "eng-project-nw002" {
  description = "Project ID"
  value       = module.Eng-project-nw002.project_id
}

output "eng-project-ads" {
  description = "Project ID"
  value       = module.Eng-project-ads.project_id
}

output "eng-project-iam" {
  description = "Project ID"
  value       = module.Eng-project-iam.project_id
}

output "eng-project-nativeorgvaldn" {
  description = "Project ID"
  value       = module.Eng-project-nativeorgvaldn.project_id
}


output "eng-project-listorgvaldn" {
  description = "Project ID"
  value       = module.Eng-project-listorgvaldn.project_id
}

output "eng-project-excllistvaldn" {
  description = "Project ID"
  value       = module.Eng-project-excllistvaldn.project_id
}

output "eng-project-includlistvaldn" {
  description = "Project ID"
  value       = module.Eng-project-includlistvaldn.project_id
}

output "eng-project-neutlistvaldn" {
  description = "Project ID"
  value       = module.Eng-project-neutlistvaldn.project_id
}

/* Eng Projects Numbers */

output "eng-poc-project-number" {
  description = "Project ID"
  value       = module.Eng-poc-project.project_number
}

output "eng-logging-project-number" {
  description = "Project ID"
  value       = module.Eng-poc-project-logging.project_number
}

output "eng-project-nw001-number" {
  description = "Project ID"
  value       = module.Eng-project-nw001.project_number
}

output "eng-project-nw002-number" {
  description = "Project ID"
  value       = module.Eng-project-nw002.project_number
}

output "eng-project-ads-number" {
  description = "Project ID"
  value       = module.Eng-project-ads.project_number
}

output "eng-project-iam-number" {
  description = "Project ID"
  value       = module.Eng-project-iam.project_number
}

output "eng-project-nativeorgvaldn-number" {
  description = "Project ID"
  value       = module.Eng-project-nativeorgvaldn.project_number
}

output "eng-project-listorgvaldn-number" {
  description = "Project ID"
  value       = module.Eng-project-listorgvaldn.project_number
}

output "eng-project-excllistvaldn-number" {
  description = "Project ID"
  value       = module.Eng-project-excllistvaldn.project_number
}


output "eng-project-includlistvaldn-number" {
  description = "Project ID"
  value       = module.Eng-project-includlistvaldn.project_number
}

output "eng-project-neutlistvaldn-number" {
  description = "Project ID"
  value       = module.Eng-project-neutlistvaldn.project_number
}
















