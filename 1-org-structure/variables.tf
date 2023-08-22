# Copyright 2021 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose. Your use of it is subject to your agreement with Google.
variable "org_id" {
  type        = string
  description = "GCP organization ID"

}

variable "billing_account" {
  type        = string
  description = "GCP Billing Account"
}

variable "root_level_folder_params" {
  type = list(object({
    environment = string
    description = string
  }))
}


variable "first_level_folder_params" {
  type = list(object({
    environment = string
    description = string
  }))
}

variable "second_level_folder_params_prod" {
  type = list(object({
    environment = string
    description = string
  }))
}
variable "second_level_folder_params_test" {
  type = list(object({
    environment = string
    description = string
  }))
}

variable "second_level_folder_params_dev" {
  type = list(object({
    environment = string
    description = string
  }))
}
variable "second_level_folder_params_eng" {
  type = list(object({
    environment = string
    description = string
  }))
}

variable "third_level_folder_params_prod" {
  type = list(object({
    environment = string
    description = string
  }))
}

variable "third_level_folder_params_test" {
  type = list(object({
    environment = string
    description = string
  }))
}

variable "third_level_folder_params_dev" {
  type = list(object({
    environment = string
    description = string
  }))
}

variable "fourth_level_folder_params_prod_a" {
  type = list(object({
    environment = string
    description = string
  }))
}

variable "fourth_level_folder_params_test_a" {
  type = list(object({
    environment = string
    description = string
  }))
}

variable "fourth_level_folder_params_dev_a" {
  type = list(object({
    environment = string
    description = string
  }))
}

/* Root project variables */

variable "root-level-proj-params-rootorgvaldn" {
  type = object({
    environment          = string
    description          = string
    business_code_number = string
    unique_id            = string
  })
}


/*
Prod project variables
*/

variable "databigquery-proj-params-prod" {
  type = object({
    environment          = string
    description          = string
    business_code_number = string
    unique_id            = string
  })
}

variable "bq-admin-proj-params-prod" {
  type = object({
    environment          = string
    description          = string
    business_code_number = string
    unique_id            = string
  })
}

variable "ingestion-proj-params-prod" {
  type = object({
    environment          = string
    description          = string
    business_code_number = string
    unique_id            = string
  })
}

variable "dataquality-proj-params-prod" {
  type = object({
    environment          = string
    description          = string
    business_code_number = string
    unique_id            = string
  })
}

variable "posfrdmdl-proj-params-prod" {
  type = object({
    environment          = string
    description          = string
    business_code_number = string
    unique_id            = string
  })
}


variable "shared-vpc-proj-params-prod" {
  type = object({
    environment          = string
    description          = string
    business_code_number = string
    unique_id            = string
  })
}

variable "logging-proj-params-prod" {
  type = object({
    environment          = string
    description          = string
    business_code_number = string
    unique_id            = string
  })
}

variable "iam-proj-params-prod" {
  type = object({
    environment          = string
    description          = string
    business_code_number = string
    unique_id            = string
  })
}


/*
Test project variables
*/
variable "databigquery-proj-params-test" {
  type = object({
    environment          = string
    description          = string
    business_code_number = string
    unique_id            = string
  })
}

variable "ingestion-proj-params-test" {
  type = object({
    environment          = string
    description          = string
    business_code_number = string
    unique_id            = string
  })
}

variable "dataquality-proj-params-test" {
  type = object({
    environment          = string
    description          = string
    business_code_number = string
    unique_id            = string
  })
}

variable "posfrdmdl-proj-params-test" {
  type = object({
    environment          = string
    description          = string
    business_code_number = string
    unique_id            = string
  })
}

variable "shared-vpc-proj-params-test-l" {
  type = object({
    environment          = string
    description          = string
    business_code_number = string
    unique_id            = string
  })
}

variable "shared-vpc-proj-params-test-d" {
  type = object({
    environment          = string
    description          = string
    business_code_number = string
    unique_id            = string
  })
}

variable "shared-vpc-proj-params-test-t" {
  type = object({
    environment          = string
    description          = string
    business_code_number = string
    unique_id            = string
  })
}

variable "logging-proj-params-test" {
  type = object({
    environment          = string
    description          = string
    business_code_number = string
    unique_id            = string
  })
}

/*
Dev project variables
*/

variable "databigquery-proj-params-dev" {
  type = object({
    environment          = string
    description          = string
    business_code_number = string
    unique_id            = string
  })
}

variable "ingestion-proj-params-dev" {
  type = object({
    environment          = string
    description          = string
    business_code_number = string
    unique_id            = string
  })
}

variable "dataquality-proj-params-dev" {
  type = object({
    environment          = string
    description          = string
    business_code_number = string
    unique_id            = string
  })
}

variable "posfrdmdl-proj-params-dev" {
  type = object({
    environment          = string
    description          = string
    business_code_number = string
    unique_id            = string
  })
}

variable "logging-proj-params-dev" {
  type = object({
    environment          = string
    description          = string
    business_code_number = string
    unique_id            = string
  })
}

variable "iam-proj-params-dev" {
  type = object({
    environment          = string
    description          = string
    business_code_number = string
    unique_id            = string
  })
}

/*
Eng project variables
*/

variable "poc-proj-params-eng" {
  type = object({
    environment          = string
    description          = string
    business_code_number = string
    unique_id            = string
  })
}

variable "poc-proj-params-eng-logging" {
  type = object({
    environment          = string
    description          = string
    business_code_number = string
    unique_id            = string
  })
}

variable "proj-params-eng-nw001" {
  type = object({
    environment          = string
    description          = string
    business_code_number = string
    unique_id            = string
  })
}

variable "proj-params-eng-nw002" {
  type = object({
    environment          = string
    description          = string
    business_code_number = string
    unique_id            = string
  })
}

variable "proj-params-eng-ads" {
  type = object({
    environment          = string
    description          = string
    business_code_number = string
    unique_id            = string
  })
}

variable "proj-params-eng-iam" {
  type = object({
    environment          = string
    description          = string
    business_code_number = string
    unique_id            = string
  })
}

variable "proj-params-eng-nativeorgvaldn" {
  type = object({
    environment          = string
    description          = string
    business_code_number = string
    unique_id            = string
  })
}

variable "proj-params-eng-listorgvaldn" {
  type = object({
    environment          = string
    description          = string
    business_code_number = string
    unique_id            = string
  })
}

variable "proj-params-eng-excllistvaldn" {
  type = object({
    environment          = string
    description          = string
    business_code_number = string
    unique_id            = string
  })
}

variable "proj-params-eng-includlistvaldn" {
  type = object({
    environment          = string
    description          = string
    business_code_number = string
    unique_id            = string
  })
}

variable "proj-params-eng-neutlistvaldn" {
  type = object({
    environment          = string
    description          = string
    business_code_number = string
    unique_id            = string
  })
}




/*
Anonymized-data project variables
*/

variable "anonymized-data-proj-params" {
  type = object({
    environment          = string
    description          = string
    business_code_number = string
    unique_id            = string
  })
}


/*
Shared project variables
*/
variable "shared-proj-params-ss" {
  type = object({
    environment          = string
    description          = string
    business_code_number = string
    unique_id            = string
  })
}


variable "interconnect-proj-params-ss" {
  type = object({
    environment          = string
    description          = string
    business_code_number = string
    unique_id            = string
  })
}

variable "activate_apis_rootorgvaldn" {
  description = "The list of apis to activate within the project"
  type        = list(string)
  default     = ["compute.googleapis.com"]
}

variable "activate_apis_prod" {
  description = "The list of apis to activate within the project"
  type        = list(string)
  default     = ["compute.googleapis.com"]
}

variable "activate_apis_test" {
  description = "The list of apis to activate within the project"
  type        = list(string)
  default     = ["compute.googleapis.com"]
}
variable "activate_apis_dev" {
  description = "The list of apis to activate within the project"
  type        = list(string)
  default     = ["compute.googleapis.com"]
}
variable "activate_apis_lab" {
  description = "The list of apis to activate within the project"
  type        = list(string)
  default     = ["compute.googleapis.com"]
}

### Lebels Variables ###

variable "root-rootorgvaldn-project" {
  description = "Project Label for rootorgvaldn"
  type        = map(string)
}


variable "posfrdmdl_env_label_prod" {
  description = "Project Label for Prod posfrdmdl"
  type        = map(string)
}

variable "posfrdmdl_env_label_dev" {
  description = "Project Label for dev posfrdmdl"
  type        = map(string)
}

variable "posfrdmdl_env_label_test" {
  description = "Project Label for test posfrdmdl"
  type        = map(string)
}

variable "anonymized-data-project" {
  description = "Project Labels"
  type        = map(string)
}
variable "dev-dataquality-project" {
  description = "Project Labels"
  type        = map(string)
}
variable "dev-datawarehouse-project" {
  description = "Project Labels"
  type        = map(string)
}

variable "dev-ingestion-project" {
  description = "Project Labels"
  type        = map(string)
}
variable "dev-logging-project" {
  description = "Project Labels"
  type        = map(string)
}
variable "dev-iam-project" {
  description = "Project Labels"
  type        = map(string)
}
variable "eng-poc-project" {
  description = "Project Labels"
  type        = map(string)
}
variable "eng-poc-project-logging" {
  description = "Project Labels"
  type        = map(string)
}
variable "eng-poc-project-nw001" {
  description = "Project Labels"
  type        = map(string)
}
variable "eng-poc-project-nw002" {
  description = "Project Labels"
  type        = map(string)
}
variable "eng-poc-project-ads" {
  description = "Project Labels"
  type        = map(string)
}
variable "eng-poc-project-iam" {
  description = "Project Labels"
  type        = map(string)
}

variable "eng-poc-project-nativeorgvaldn" {
  description = "Project Labels"
  type        = map(string)
}

variable "eng-poc-project-listorgvaldn" {
  description = "Project Labels"
  type        = map(string)
}

variable "eng-poc-project-excllistvaldn" {
  description = "Project Labels"
  type        = map(string)
}

variable "eng-poc-project-includlistvaldn" {
  description = "Project Labels"
  type        = map(string)
}

variable "eng-poc-project-neutlistvaldn" {
  description = "Project Labels"
  type        = map(string)
}


variable "prod-dataquality-project" {
  description = "Project Labels"
  type        = map(string)
}
variable "prod-datawarehouse-project" {
  description = "Project Labels"
  type        = map(string)
}
variable "prod-bq-admin-project" {
  description = "Project Labels"
  type        = map(string)
}
variable "prod-ingestion-project" {
  description = "Project Labels"
  type        = map(string)
}
variable "prod-logging-project" {
  description = "Project Labels"
  type        = map(string)
}
variable "prod-iam-project" {
  description = "Project Labels"
  type        = map(string)
}
variable "shared-network-project" {
  description = "Project Labels"
  type        = map(string)
}
variable "prod-shared-vpc-project" {
  description = "Project Labels"
  type        = map(string)
}
variable "shared-interconnect-project" {
  description = "Project Labels"
  type        = map(string)
}
variable "test-dataquality-project" {
  description = "Project Labels"
  type        = map(string)
}
variable "test-datawarehouse-project" {
  description = "Project Labels"
  type        = map(string)
}
variable "test-ingestion-project" {
  description = "Project Labels"
  type        = map(string)
}
variable "test-logging-project" {
  description = "Project Labels"
  type        = map(string)
}
variable "test-shared-vpc-project-d" {
  description = "Project Labels"
  type        = map(string)
}
variable "test-shared-vpc-project-l" {
  description = "Project Labels"
  type        = map(string)
}
variable "test-shared-vpc-project-t" {
  description = "Project Labels"
  type        = map(string)
}
