# Copyright 2021 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose. Your use of it is subject to your agreement with Google.

/* Root level projects */

module "root-rootorgvaldn-project" {
  source          = "../../modules/project/"
  project_params  = var.root-level-proj-params-rootorgvaldn
  org_id          = var.org_id                                                         // provide the org id here
  billing_account = var.billing_account                                                // provide the billing account id here
  activate_apis   = var.activate_apis_rootorgvaldn
  labels          = var.root-rootorgvaldn-project
}


/* Prod Projects
*/

module "prod-datawarehouse-project" {
  source          = "../../modules/project/"
  project_params  = var.databigquery-proj-params-prod
  org_id          = var.org_id                                                         // provide the org id here
  folder_id       = module.third_level_folder_prod.folders_map.fldr-p-datawarehouse.id //(don't change as parent id is static)
  billing_account = var.billing_account                                                // provide the billing account id here
  activate_apis   = var.activate_apis_prod
  labels          = var.prod-datawarehouse-project
}

module "prod-bq-admin-project" {
  source          = "../../modules/project/"
  project_params  = var.bq-admin-proj-params-prod
  org_id          = var.org_id                                                         // provide the org id here
  folder_id       = module.third_level_folder_prod.folders_map.fldr-p-datawarehouse.id //(don't change as parent id is static)
  billing_account = var.billing_account                                                // provide the billing account id here
  activate_apis   = var.activate_apis_prod
  labels          = var.prod-bq-admin-project
}


module "prod-ingestion-project" {
  source          = "../../modules/project/"
  project_params  = var.ingestion-proj-params-prod
  org_id          = var.org_id                                                         // provide the org id here
  folder_id       = module.third_level_folder_prod.folders_map.fldr-p-datawarehouse.id //(don't change as parent id is static)/
  billing_account = var.billing_account                                                // provide the billing account id here
  activate_apis   = var.activate_apis_prod
  labels          = var.prod-ingestion-project
}

module "prod-dataquality-project" {
  source          = "../../modules/project/"
  project_params  = var.dataquality-proj-params-prod
  org_id          = var.org_id                                                         // provide the org id here
  folder_id       = module.third_level_folder_prod.folders_map.fldr-p-datawarehouse.id //(don't change as parent id is static)/
  billing_account = var.billing_account                                                // provide the billing account id here
  activate_apis   = var.activate_apis_prod
  labels          = var.prod-dataquality-project
}


module "prod-posfrdmdl-project" {
  source          = "../../modules/project/"
  project_params  = var.posfrdmdl-proj-params-prod
  org_id          = var.org_id                                                         //  provide the org id here
  folder_id       = module.fourth_level_folder_prod_a.folders_map.fldr-p-analytical.id //(don't change as parent id is static)/
  billing_account = var.billing_account                                                // provide the billing account id here
  activate_apis   = var.activate_apis_prod
  labels          = var.posfrdmdl_env_label_prod

}


module "prod-shared-vpc-project" {
  source          = "../../modules/project/"
  project_params  = var.shared-vpc-proj-params-prod
  org_id          = var.org_id                                                    // provide the org id here
  folder_id       = module.second_level_folder_prod.folders_map.fldr-p-network.id //(don't change as parent id is static)/
  billing_account = var.billing_account                                           // provide the billing account id here
  activate_apis   = var.activate_apis_prod
  labels          = var.prod-shared-vpc-project
}

module "prod-logging-project" {
  source          = "../../modules/project/"
  project_params  = var.logging-proj-params-prod
  org_id          = var.org_id                                                    // provide the org id here
  folder_id       = module.second_level_folder_prod.folders_map.fldr-p-logging.id //(don't change as parent id is static)/
  billing_account = var.billing_account                                           // provide the billing account id here
  activate_apis   = var.activate_apis_prod
  labels          = var.prod-logging-project
}

module "prod-iam-project" {
  source          = "../../modules/project/"
  project_params  = var.iam-proj-params-prod
  org_id          = var.org_id                                         // provide the org id here
  folder_id       = module.first_level_folder.folders_map.fldr-prod.id //(don't change as parent id is static)/
  billing_account = var.billing_account                                // provide the billing account id here
  activate_apis   = var.activate_apis_prod
  labels          = var.prod-iam-project
}

/* anonymized-data Projects(Prod)
*/

module "anonymized-data-project" {
  source          = "../../modules/project/"
  project_params  = var.anonymized-data-proj-params
  org_id          = var.org_id                                                            // provide the org id here
  folder_id       = module.second_level_folder_prod.folders_map.fldr-a-anonymized-data.id //(don't change as parent id is static)/
  billing_account = var.billing_account                                                   // provide the billing account id here
  activate_apis   = var.activate_apis_prod
  labels          = var.anonymized-data-project
}


/* Shared Projects (Prod)
*/


module "shared-network-project" {
  source          = "../../modules/project/"
  project_params  = var.shared-proj-params-ss
  org_id          = var.org_id                                                             // provide the org id here
  folder_id       = module.second_level_folder_prod.folders_map.fldr-ss-shared-services.id //(don't change as parent id is static)/
  billing_account = var.billing_account                                                    // provide the billing account id here
  activate_apis   = var.activate_apis_prod
  labels          = var.shared-network-project
}

module "shared-interconnect-project" {
  source          = "../../modules/project/"
  project_params  = var.interconnect-proj-params-ss
  org_id          = var.org_id                                                             // provide the org id here
  folder_id       = module.second_level_folder_prod.folders_map.fldr-ss-shared-services.id //(don't change as parent id is static)/
  billing_account = var.billing_account                                                    // provide the billing account id here
  activate_apis   = var.activate_apis_prod
  labels          = var.shared-interconnect-project
}


/* Test Projects
*/

module "test-datawarehouse-project" {
  source          = "../../modules/project/"
  project_params  = var.databigquery-proj-params-test
  org_id          = var.org_id                                                         // provide the org id here
  folder_id       = module.third_level_folder_test.folders_map.fldr-t-datawarehouse.id //(don't change as parent id is static)/
  billing_account = var.billing_account                                                // provide the billing account id here
  activate_apis   = var.activate_apis_test
  labels          = var.test-datawarehouse-project
}

module "test-ingestion-project" {
  source          = "../../modules/project/"
  project_params  = var.ingestion-proj-params-test
  org_id          = var.org_id                                                         // provide the org id here
  folder_id       = module.third_level_folder_test.folders_map.fldr-t-datawarehouse.id //(don't change as parent id is static)/
  billing_account = var.billing_account                                                // provide the billing account id here
  activate_apis   = var.activate_apis_test
  labels          = var.test-ingestion-project
}

module "test-dataquality-project" {
  source          = "../../modules/project/"
  project_params  = var.dataquality-proj-params-test
  org_id          = var.org_id                                                         // provide the org id here
  folder_id       = module.third_level_folder_test.folders_map.fldr-t-datawarehouse.id //(don't change as parent id is static)/
  billing_account = var.billing_account                                                // provide the billing account id here
  activate_apis   = var.activate_apis_test
  labels          = var.test-dataquality-project
}


module "test-posfrdmdl-project" {
  source          = "../../modules/project/"
  project_params  = var.posfrdmdl-proj-params-test
  org_id          = var.org_id                                                         // provide the org id here
  folder_id       = module.fourth_level_folder_test_a.folders_map.fldr-t-analytical.id //(don't change as parent id is static)/
  billing_account = var.billing_account                                                // provide the billing account id here
  activate_apis   = var.activate_apis_test
  labels          = var.posfrdmdl_env_label_test

}

module "test-shared-vpc-project-l" {
  source          = "../../modules/project/"
  project_params  = var.shared-vpc-proj-params-test-l
  org_id          = var.org_id                                                     // provide the org id here
  folder_id       = module.second_level_folder_test.folders_map.fldr-np-network.id //(don't change as parent id is static)/
  billing_account = var.billing_account                                            // provide the billing account id here
  activate_apis   = var.activate_apis_test
  labels          = var.test-shared-vpc-project-l
}

module "test-shared-vpc-project-d" {
  source          = "../../modules/project/"
  project_params  = var.shared-vpc-proj-params-test-d
  org_id          = var.org_id                                                     // provide the org id here
  folder_id       = module.second_level_folder_test.folders_map.fldr-np-network.id //(don't change as parent id is static)/
  billing_account = var.billing_account                                            // provide the billing account id here
  activate_apis   = var.activate_apis_test
  labels          = var.test-shared-vpc-project-d
}

module "test-shared-vpc-project-t" {
  source          = "../../modules/project/"
  project_params  = var.shared-vpc-proj-params-test-t
  org_id          = var.org_id                                                     // provide the org id here
  folder_id       = module.second_level_folder_test.folders_map.fldr-np-network.id //(don't change as parent id is static)/
  billing_account = var.billing_account                                            // provide the billing account id here
  activate_apis   = var.activate_apis_test
  labels          = var.test-shared-vpc-project-t
}

module "test-logging-project" {
  source          = "../../modules/project/"
  project_params  = var.logging-proj-params-test
  org_id          = var.org_id                                                    // provide the org id here
  folder_id       = module.second_level_folder_test.folders_map.fldr-t-logging.id //(don't change as parent id is static)/
  billing_account = var.billing_account                                           // provide the billing account id here
  activate_apis   = var.activate_apis_test
  labels          = var.test-logging-project
}


/* Dev Projects
*/

module "dev-datawarehouse-project" {
  source          = "../../modules/project/"
  project_params  = var.databigquery-proj-params-dev
  org_id          = var.org_id // provide the org id here
  folder_id       = module.third_level_folder_dev.folders_map.fldr-d-datawarehouse.id /*(don't change as parent id is static)*/
  billing_account = var.billing_account // provide the billing account id here
  activate_apis   = var.activate_apis_dev
  labels          = var.dev-datawarehouse-project
}

module "dev-ingestion-project" {
  source          = "../../modules/project/"
  project_params  = var.ingestion-proj-params-dev
  org_id          = var.org_id // provide the org id here
  folder_id       = module.third_level_folder_dev.folders_map.fldr-d-datawarehouse.id /*(don't change as parent id is static)*/
  billing_account = var.billing_account // provide the billing account id here
  activate_apis   = var.activate_apis_dev
  labels          = var.dev-ingestion-project
}

module "dev-dataquality-project" {
  source          = "../../modules/project/"
  project_params  = var.dataquality-proj-params-dev
  org_id          = var.org_id // provide the org id here
  folder_id       = module.third_level_folder_dev.folders_map.fldr-d-datawarehouse.id /*(don't change as parent id is static)*/
  billing_account = var.billing_account // provide the billing account id here
  activate_apis   = var.activate_apis_dev
  labels          = var.dev-dataquality-project
}


module "dev-posfrdmdl-project" {
  source          = "../../modules/project/"
  project_params  = var.posfrdmdl-proj-params-dev
  org_id          = var.org_id // provide the org id here
  folder_id       = module.fourth_level_folder_dev_a.folders_map.fldr-d-analytical.id /*(don't change as parent id is static)*/
  billing_account = var.billing_account // provide the billing account id here
  activate_apis   = var.activate_apis_dev
  labels          = var.posfrdmdl_env_label_dev
}

module "dev-logging-project" {
  source          = "../../modules/project/"
  project_params  = var.logging-proj-params-dev
  org_id          = var.org_id // provide the org id here
  folder_id       = module.second_level_folder_dev.folders_map.fldr-d-logging.id /*(don't change as parent id is static)*/
  billing_account = var.billing_account // provide the billing account id here
  activate_apis   = var.activate_apis_dev
  labels          = var.dev-logging-project
}

module "dev-iam-project" {
  source          = "../../modules/project/"
  project_params  = var.iam-proj-params-dev
  org_id          = var.org_id // provide the org id here
  folder_id       = module.first_level_folder.folders_map.fldr-dev.id /*(don't change as parent id is static)*/
  billing_account = var.billing_account // provide the billing account id here
  activate_apis   = var.activate_apis_dev
  labels          = var.dev-iam-project
}


/* Eng Projects
*/

module "Eng-poc-project" {
  source          = "../../modules/project/"
  project_params  = var.poc-proj-params-eng
  org_id          = var.org_id // provide the org id here
  folder_id       = module.first_level_folder.folders_map.fldr-eng.id /*(don't change as parent id is static)*/
  billing_account = var.billing_account // provide the billing account id here
  activate_apis   = var.activate_apis_lab
  labels          = var.eng-poc-project
}

module "Eng-poc-project-logging" {
  source          = "../../modules/project/"
  project_params  = var.poc-proj-params-eng-logging
  org_id          = var.org_id // provide the org id here
  folder_id       = module.second_level_folder_eng.folders_map.fldr-l-logging.id /*(don't change as parent id is static)*/
  billing_account = var.billing_account // provide the billing account id here
  activate_apis   = var.activate_apis_lab
  labels          = var.eng-poc-project-logging
}

module "Eng-project-nw001" {
  source          = "../../modules/project/"
  project_params  = var.proj-params-eng-nw001
  org_id          = var.org_id // provide the org id here
  folder_id       = module.second_level_folder_eng.folders_map.fldr-l-network.id /*(don't change as parent id is static)*/
  billing_account = var.billing_account // provide the billing account id here
  activate_apis   = var.activate_apis_lab
  labels          = var.eng-poc-project-nw001
}

module "Eng-project-nw002" {
  source          = "../../modules/project/"
  project_params  = var.proj-params-eng-nw002
  org_id          = var.org_id // provide the org id here
  folder_id       = module.second_level_folder_eng.folders_map.fldr-l-network.id /*(don't change as parent id is static)*/
  billing_account = var.billing_account // provide the billing account id here
  activate_apis   = var.activate_apis_lab
  labels          = var.eng-poc-project-nw002
}

module "Eng-project-ads" {
  source          = "../../modules/project/"
  project_params  = var.proj-params-eng-ads
  org_id          = var.org_id // provide the org id here
  folder_id       = module.second_level_folder_eng.folders_map.fldr-l-infosec.id /*(don't change as parent id is static)*/
  billing_account = var.billing_account // provide the billing account id here
  activate_apis   = var.activate_apis_lab
  labels          = var.eng-poc-project-ads
}

module "Eng-project-iam" {
  source          = "../../modules/project/"
  project_params  = var.proj-params-eng-iam
  org_id          = var.org_id // provide the org id here
  folder_id       = module.second_level_folder_eng.folders_map.fldr-l-infosec.id /*(don't change as parent id is static)*/
  billing_account = var.billing_account // provide the billing account id here
  activate_apis   = var.activate_apis_lab
  labels          = var.eng-poc-project-iam
}

module "Eng-project-nativeorgvaldn" {
  source          = "../../modules/project/"
  project_params  = var.proj-params-eng-nativeorgvaldn
  org_id          = var.org_id // provide the org id here
  folder_id       = module.second_level_folder_eng.folders_map.fldr-l-nativeorgvaldn.id /*(don't change as parent id is static)*/
  billing_account = var.billing_account // provide the billing account id here
  activate_apis   = var.activate_apis_lab
  labels          = var.eng-poc-project-nativeorgvaldn
}

module "Eng-project-listorgvaldn" {
  source          = "../../modules/project/"
  project_params  = var.proj-params-eng-listorgvaldn
  org_id          = var.org_id // provide the org id here
  folder_id       = module.second_level_folder_eng.folders_map.fldr-l-nativeorgvaldn.id /*(don't change as parent id is static)*/
  billing_account = var.billing_account // provide the billing account id here
  activate_apis   = var.activate_apis_lab
  labels          = var.eng-poc-project-listorgvaldn
}

module "Eng-project-excllistvaldn" {
  source          = "../../modules/project/"
  project_params  = var.proj-params-eng-excllistvaldn
  org_id          = var.org_id // provide the org id here
  folder_id       = module.second_level_folder_eng.folders_map.fldr-l-excludeorgvaldn.id /*(don't change as parent id is static)*/
  billing_account = var.billing_account // provide the billing account id here
  activate_apis   = var.activate_apis_lab
  labels          = var.eng-poc-project-excllistvaldn
}

module "Eng-project-includlistvaldn" {
  source          = "../../modules/project/"
  project_params  = var.proj-params-eng-includlistvaldn
  org_id          = var.org_id // provide the org id here
  folder_id       = module.second_level_folder_eng.folders_map.fldr-l-excludeorgvaldn.id /*(don't change as parent id is static)*/
  billing_account = var.billing_account // provide the billing account id here
  activate_apis   = var.activate_apis_lab
  labels          = var.eng-poc-project-includlistvaldn
}

module "Eng-project-neutlistvaldn" {
  source          = "../../modules/project/"
  project_params  = var.proj-params-eng-neutlistvaldn
  org_id          = var.org_id // provide the org id here
  folder_id       = module.second_level_folder_eng.folders_map.fldr-l-excludeorgvaldn.id /*(don't change as parent id is static)*/
  billing_account = var.billing_account // provide the billing account id here
  activate_apis   = var.activate_apis_lab
  labels          = var.eng-poc-project-neutlistvaldn
}


