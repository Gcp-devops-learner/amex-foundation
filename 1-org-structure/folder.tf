# Copyright 2021 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose. Your use of it is subject to your agreement with Google.

module "root_level_folder" {
  source        = "../../modules/folder/"
  folder_params = var.root_level_folder_params
  parent        = var.org_id /*provide the parent id here*/
}


module "first_level_folder" {
  source        = "../../modules/folder/"
  folder_params = var.first_level_folder_params
  parent        = module.root_level_folder.folders_map.fldr-gi.id /*(don't change as parent name is static)*/

}

module "second_level_folder_prod" {
  source = "../../modules/folder/"

  folder_params = var.second_level_folder_params_prod
  parent        = module.first_level_folder.folders_map.fldr-prod.id //(don't change as parent name is static)/

}
module "second_level_folder_test" {
  source = "../../modules/folder/"

  folder_params = var.second_level_folder_params_test
  parent        = module.first_level_folder.folders_map.fldr-test.id //(don't change as parent name is static)/

}

module "second_level_folder_dev" {
  source = "../../modules/folder/"

  folder_params = var.second_level_folder_params_dev
  parent        = module.first_level_folder.folders_map.fldr-dev.id /*(don't change as parent name is static)*/
}

module "second_level_folder_eng" {
  source = "../../modules/folder/"

  folder_params = var.second_level_folder_params_eng
  parent        = module.first_level_folder.folders_map.fldr-eng.id /*(don't change as parent name is static)*/
}


module "third_level_folder_prod" {
  source = "../../modules/folder/"

  folder_params = var.third_level_folder_params_prod
  parent        = module.second_level_folder_prod.folders_map.fldr-p-bigdata.id //(don't change as parent name is static)

}

module "third_level_folder_test" {
  source = "../../modules/folder/"

  folder_params = var.third_level_folder_params_test
  parent        = module.second_level_folder_test.folders_map.fldr-t-bigdata.id //(don't change as parent name is static)/

}

module "third_level_folder_dev" {
  source = "../../modules/folder/"

  folder_params = var.third_level_folder_params_dev
  parent        = module.second_level_folder_dev.folders_map.fldr-d-bigdata.id /*(don't change as parent name is static)*/

}

module "fourth_level_folder_prod_a" {
  source = "../../modules/folder/"

  folder_params = var.fourth_level_folder_params_prod_a
  parent        = module.third_level_folder_prod.folders_map.fldr-p-cfr.id //(don't change as parent name is static)

}

module "fourth_level_folder_test_a" {
  source = "../../modules/folder/"

  folder_params = var.fourth_level_folder_params_test_a
  parent        = module.third_level_folder_test.folders_map.fldr-t-cfr.id //(don't change as parent name is static)

}

module "fourth_level_folder_dev_a" {
  source        = "../../modules/folder/"
  folder_params = var.fourth_level_folder_params_dev_a
  parent        = module.third_level_folder_dev.folders_map.fldr-d-cfr.id /*(don't change as parent name is static)*/

}




