# Copyright 2021 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose. Your use of it is subject to your agreement with Google.
#Amex Org Info


org_id          = ""
billing_account = ""


/*#############################
  Folder creation variables
*/ #############################

root_level_folder_params = [

  /* description should not be empty*/

  {
    environment = ""
    description = "gi"
  }
]

first_level_folder_params = [

  /* description should not be empty*/

  {
    environment = ""
    description = "prod"
  },
  {
    environment = ""
    description = "test"
  },
  {
    environment = ""
    description = "dev"
  },
  {
    environment = ""
    description = "eng"
  }
]

second_level_folder_params_prod = [

  {
    environment = "p"
    description = "bigdata"
  },
  {
    environment = "p"
    description = "multi-tenant"
  },
  {
    environment = "p"
    description = "ads"
  },
  {
    environment = "p"
    description = "network"
  },
  {
    environment = "p"
    description = "logging"
    }, {
    environment = "a"
    description = "anonymized-data"
  },
  {
    environment = "ss"
    description = "shared-services"
  }
]

second_level_folder_params_test = [
  {
    environment = "t"
    description = "bigdata"
  },
  {
    environment = "t"
    description = "multi-tenant"
  },
  {
    environment = "t"
    description = "ads"
  },
  {
    environment = "np"
    description = "network"
  },
  {
    environment = "t"
    description = "logging"
  }
]
second_level_folder_params_dev = [

  /* description should not be empty*/

  {
    environment = "d"
    description = "bigdata"
  },
  {
    environment = "d"
    description = "multi-tenant"
  },
  {
    environment = "d"
    description = "ads"
  },
  {
    environment = "d"
    description = "logging"
  }
]

second_level_folder_params_eng = [

  /* description should not be empty*/
  {
    environment = "l"
    description = "logging"
  },
  {
    environment = "l"
    description = "network"
  },
  {
    environment = "l"
    description = "infosec"
  },
  {
    environment = "l"
    description = "nativeorgvaldn"
  },
  {
    environment = "l"
    description = "excludeorgvaldn"
  }

]


third_level_folder_params_prod = [

  {
    environment = "p"
    description = "datawarehouse"
  },
  {
    environment = "p"
    description = "cfr"
  }
]
third_level_folder_params_test = [

  {
    environment = "t"
    description = "datawarehouse"
  },
  {
    environment = "t"
    description = "cfr"
  }
]

third_level_folder_params_dev = [

  /* description should not be empty*/

  {
    environment = "d"
    description = "datawarehouse"
  },
  {
    environment = "d"
    description = "cfr"
  }
]

fourth_level_folder_params_prod_a = [

  {
    environment = "p"
    description = "analytical"
  }
]

fourth_level_folder_params_test_a = [

  {
    environment = "t"
    description = "analytical"
  }
]

fourth_level_folder_params_dev_a = [

  /* description should not be empty*/

  {
    environment = "d"
    description = "analytical"
  }
]


/*####################################
  Root level Project creation variables
*/ ####################################

root-level-proj-params-rootorgvaldn = {

  description          = "rootorgvaldn"
  environment          = "l"
  business_code_number = "600001706"
  unique_id            = ""

}



/*#############################
  Prod Project creation variables
*/ #############################

databigquery-proj-params-prod = {

  description          = "bigquery"
  environment          = "p"
  business_code_number = "600001717"
  unique_id            = "1"

}

bq-admin-proj-params-prod = {

  description          = "bq-admin"
  environment          = "p"
  business_code_number = "600001717"
  unique_id            = ""

}

ingestion-proj-params-prod = {

  description          = "ingestion"
  environment          = "p"
  business_code_number = "600001717"
  unique_id            = ""

}

dataquality-proj-params-prod = {

  description          = "dataquality"
  environment          = "p"
  business_code_number = "600001717"
  unique_id            = ""

}

posfrdmdl-proj-params-prod = {

  description          = "posfrdmdl"
  environment          = "p"
  business_code_number = "600001717"
  unique_id            = "ard"

}
shared-vpc-proj-params-prod = {

  description          = "shared-vpc"
  environment          = "p"
  business_code_number = "600001687"
  unique_id            = ""

}

logging-proj-params-prod = {

  description          = "logging"
  environment          = "p"
  business_code_number = "600001687"
  unique_id            = ""

}

iam-proj-params-prod = {

  description          = "iam"
  environment          = "p"
  business_code_number = "600001687"
  unique_id            = ""

}

/*#############################
  Test Project creation variables
 #############################*/

databigquery-proj-params-test = {

  description          = "bigquery"
  environment          = "t"
  business_code_number = "600001717"
  unique_id            = "1"

}

ingestion-proj-params-test = {

  description          = "ingestion"
  environment          = "t"
  business_code_number = "600001717"
  unique_id            = ""

}

dataquality-proj-params-test = {

  description          = "dataquality"
  environment          = "t"
  business_code_number = "600001717"
  unique_id            = ""

}

posfrdmdl-proj-params-test = {

  description          = "posfrdmdl"
  environment          = "t"
  business_code_number = "600001717"
  unique_id            = "ard"

}

shared-vpc-proj-params-test-l = {

  description          = "shared-vpc"
  environment          = "np-l"
  business_code_number = "600001687"
  unique_id            = ""

}

shared-vpc-proj-params-test-d = {

  description          = "shared-vpc"
  environment          = "np-d"
  business_code_number = "600001687"
  unique_id            = ""

}


shared-vpc-proj-params-test-t = {

  description          = "shared-vpc"
  environment          = "np-t"
  business_code_number = "600001687"
  unique_id            = ""

}

logging-proj-params-test = {

  description          = "logging"
  environment          = "t"
  business_code_number = "600001687"
  unique_id            = ""

}

/*#############################
  Dev Project creation variables
*/ #############################

databigquery-proj-params-dev = {

  description          = "bigquery"
  environment          = "d"
  business_code_number = "600001717"
  unique_id            = "1"

}

ingestion-proj-params-dev = {

  description          = "ingestion"
  environment          = "d"
  business_code_number = "600001717"
  unique_id            = ""

}

dataquality-proj-params-dev = {

  description          = "dataquality"
  environment          = "d"
  business_code_number = "600001717"
  unique_id            = ""

}

posfrdmdl-proj-params-dev = {

  description          = "posfrdmdl"
  environment          = "d"
  business_code_number = "600001717"
  unique_id            = "ard"

}


logging-proj-params-dev = {

  description          = "logging"
  environment          = "d"
  business_code_number = "600001687"
  unique_id            = ""

}

iam-proj-params-dev = {

  description          = "iam"
  environment          = "d"
  business_code_number = "600001687"
  unique_id            = ""

}

/*#############################
  Eng Project creation variables
*/ #############################

poc-proj-params-eng = {

  description          = "poc"
  environment          = "l"
  business_code_number = "600001687"
  unique_id            = ""

}

poc-proj-params-eng-logging = {

  description          = "logging"
  environment          = "l"
  business_code_number = "600001687"
  unique_id            = ""

}

proj-params-eng-nw001 = {

  description          = "nw001"
  environment          = "l"
  business_code_number = "600001687"
  unique_id            = ""

}

proj-params-eng-nw002 = {

  description          = "nw002"
  environment          = "l"
  business_code_number = "600001687"
  unique_id            = ""

}

proj-params-eng-ads = {

  description          = "ads"
  environment          = "l"
  business_code_number = "600001687"
  unique_id            = ""

}

proj-params-eng-iam = {

  description          = "iam"
  environment          = "l"
  business_code_number = "600001687"
  unique_id            = ""

}

proj-params-eng-nativeorgvaldn = {

  description          = "nativeorgvaldn"
  environment          = "l"
  business_code_number = "600001706"
  unique_id            = ""

}

proj-params-eng-listorgvaldn = {

  description          = "listorgvaldn"
  environment          = "l"
  business_code_number = "600001706"
  unique_id            = ""

}

proj-params-eng-excllistvaldn = {

  description          = "excllistvaldn"
  environment          = "l"
  business_code_number = "600001706"
  unique_id            = ""

}

proj-params-eng-includlistvaldn = {

  description          = "incllistvaldn" 
  environment          = "l"
  business_code_number = "600001706"
  unique_id            = ""

}

proj-params-eng-neutlistvaldn = {

  description          = "neutlistvaldn"
  environment          = "l"
  business_code_number = "600001706"
  unique_id            = ""

}


/*#############################
  Anonymized-Data Project creation variables
*/ #############################

anonymized-data-proj-params = {

  description          = "data-vpc"
  environment          = "a"
  business_code_number = "600001687"
  unique_id            = ""

}

/*#############################
  Shared Project creation variables
*/ #############################

shared-proj-params-ss = {

  description          = "shared-vpc"
  environment          = "ss"
  business_code_number = "600001687"
  unique_id            = ""

}

interconnect-proj-params-ss = {

  description          = "interconnect"
  environment          = "ss"
  business_code_number = "600001687"
  unique_id            = ""

}

#List of APIs to be activated

activate_apis_rootorgvaldn = [
    "compute.googleapis.com"
]


activate_apis_prod = [
  "storage-component.googleapis.com",
  "compute.googleapis.com",
  "dataproc.googleapis.com",
  "cloudkms.googleapis.com"
]

activate_apis_test = [
  "storage-component.googleapis.com",
  "compute.googleapis.com",
  "dataproc.googleapis.com",
  "cloudkms.googleapis.com"
]

activate_apis_dev = [
  "pubsub.googleapis.com",
  "dataflow.googleapis.com",
  "composer.googleapis.com",
  "bigquery.googleapis.com",
  "bigtable.googleapis.com",
  "logging.googleapis.com",
  "monitoring.googleapis.com"
]

activate_apis_lab = [
  "pubsub.googleapis.com",
  "dataflow.googleapis.com",
  "composer.googleapis.com",
  "bigquery.googleapis.com",
  "bigtable.googleapis.com",
  "logging.googleapis.com",
  "monitoring.googleapis.com",
  "compute.googleapis.com"
]

#List of project labels

root-rootorgvaldn-project   = {}
posfrdmdl_env_label_prod    = { "aexp-app-name" : "posfrdmdl_frdmdldpsvcs" }
posfrdmdl_env_label_test    = { "aexp-app-name" : "posfrdmdl_frdmdldpsvcs" }
posfrdmdl_env_label_dev     = { "aexp-app-name" : "posfrdmdl_frdmdldpsvcs" }
anonymized-data-project     = {}
dev-dataquality-project     = {}
dev-datawarehouse-project   = {}
dev-ingestion-project       = {}
dev-logging-project         = {}
dev-iam-project             = {}
eng-poc-project             = {}
eng-poc-project-logging     = {}
eng-poc-project-nw001       = {}
eng-poc-project-nw002       = {}
eng-poc-project-iam         = {}
eng-poc-project-ads         = {}
eng-poc-project-nativeorgvaldn = {}
eng-poc-project-listorgvaldn = {}
eng-poc-project-excllistvaldn = {}
eng-poc-project-includlistvaldn = {}
eng-poc-project-neutlistvaldn = {}
prod-dataquality-project    = {}
prod-datawarehouse-project  = {}
prod-bq-admin-project       = {}
prod-ingestion-project      = {}
prod-logging-project        = {}
prod-iam-project            = {}
prod-shared-vpc-project     = {}
shared-interconnect-project = {}
shared-network-project      = {}
test-dataquality-project    = {}
test-datawarehouse-project  = {}
test-ingestion-project      = {}
test-logging-project        = {}
test-shared-vpc-project-d   = {}
test-shared-vpc-project-l   = {}
test-shared-vpc-project-t   = {}