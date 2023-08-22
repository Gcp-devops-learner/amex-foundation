
locals {
    prod_vpn_gateway_east = data.terraform_remote_state.prod_networking.outputs.prod_vpn_gateway_e_name
    shared_vpn_gateway_east = data.terraform_remote_state.ss_networking.outputs.shared_vpn_gateway_e_name
    prod_vpn_gateway_central = data.terraform_remote_state.prod_networking.outputs.prod_vpn_gateway_c_name
    shared_vpn_gateway_central = data.terraform_remote_state.ss_networking.outputs.shared_vpn_gateway_c_name

    prod_router_east = data.terraform_remote_state.prod_networking.outputs.prod_router_east
    prod_router_central = data.terraform_remote_state.prod_networking.outputs.prod_router_central
    shared_router_east = data.terraform_remote_state.ss_networking.outputs.shared_router_east
    shared_router_central = data.terraform_remote_state.ss_networking.outputs.shared_router_central
    
    prod_router_east_name = data.terraform_remote_state.prod_networking.outputs.prod_router_east_name
    prod_router_central_name = data.terraform_remote_state.prod_networking.outputs.prod_router_central_name
    shared_router_east_name = data.terraform_remote_state.ss_networking.outputs.shared_router_east_name
    shared_router_central_name = data.terraform_remote_state.ss_networking.outputs.shared_router_central_name
    
    /* Non Prod */
    
    nonprod_vpn_gateway_east_dev = data.terraform_remote_state.nonprod_networking_dev.outputs.nonprod_vpn_gateway_e_name
    nonprod_vpn_gateway_central_dev = data.terraform_remote_state.nonprod_networking_dev.outputs.nonprod_vpn_gateway_c_name
    nonprod_router_east_dev = data.terraform_remote_state.nonprod_networking_dev.outputs.nonprod_router_east
    nonprod_router_central_dev = data.terraform_remote_state.nonprod_networking_dev.outputs.nonprod_router_central
    nonprod_router_east_name_dev = data.terraform_remote_state.nonprod_networking_dev.outputs.nonprod_router_east_name
    nonprod_router_central_name_dev = data.terraform_remote_state.nonprod_networking_dev.outputs.nonprod_router_central_name


    nonprod_vpn_gateway_east_test = data.terraform_remote_state.nonprod_networking_test.outputs.nonprod_vpn_gateway_e_name
    nonprod_vpn_gateway_central_test = data.terraform_remote_state.nonprod_networking_test.outputs.nonprod_vpn_gateway_c_name
    nonprod_router_east_test = data.terraform_remote_state.nonprod_networking_test.outputs.nonprod_router_east
    nonprod_router_central_test = data.terraform_remote_state.nonprod_networking_test.outputs.nonprod_router_central
    nonprod_router_east_name_test = data.terraform_remote_state.nonprod_networking_test.outputs.nonprod_router_east_name
    nonprod_router_central_name_test = data.terraform_remote_state.nonprod_networking_test.outputs.nonprod_router_central_name

    nonprod_vpn_gateway_east_lab = data.terraform_remote_state.nonprod_networking_lab.outputs.nonprod_vpn_gateway_e_name
    nonprod_vpn_gateway_central_lab = data.terraform_remote_state.nonprod_networking_lab.outputs.nonprod_vpn_gateway_c_name
    nonprod_router_east_lab = data.terraform_remote_state.nonprod_networking_lab.outputs.nonprod_router_east
    nonprod_router_central_lab = data.terraform_remote_state.nonprod_networking_lab.outputs.nonprod_router_central
    nonprod_router_east_name_lab = data.terraform_remote_state.nonprod_networking_lab.outputs.nonprod_router_east_name
    nonprod_router_central_name_lab = data.terraform_remote_state.nonprod_networking_lab.outputs.nonprod_router_central_name

}


/**********************************
Making Tunnels from Shared
*********************************/
#shared to Prod - East
resource "google_compute_vpn_tunnel" "east_sharedtoprod_1" {
  name                  = "east-${terraform.workspace}toprod"
  region                = "us-east4"
  vpn_gateway           = local.shared_vpn_gateway_east
  peer_gcp_gateway      = local.prod_vpn_gateway_east
  shared_secret         = "a secret message"
  router                = local.shared_router_east
  vpn_gateway_interface = 0
  project = var.sharedproject_id
}

#shared to Prod - East - For HA
resource "google_compute_vpn_tunnel" "east_sharedtoprod_2" {
  name                  = "east-${terraform.workspace}toprod-ha"
  region                = "us-east4"
  vpn_gateway           = local.shared_vpn_gateway_east
  peer_gcp_gateway      = local.prod_vpn_gateway_east
  shared_secret         = "a secret message"
  router                = local.shared_router_east
  vpn_gateway_interface = 1
  project = var.sharedproject_id
}

#shared to Prod  - Central
resource "google_compute_vpn_tunnel" "central_sharedtoprod_1" {
  name                  = "central-${terraform.workspace}toprod"
  region                = "us-central1"
  vpn_gateway           = local.shared_vpn_gateway_central
  peer_gcp_gateway      = local.prod_vpn_gateway_central
  shared_secret         = "a secret message"
  router                = local.shared_router_central
  vpn_gateway_interface = 1
  project = var.sharedproject_id
}

#shared to Prod  - Central - For HA
resource "google_compute_vpn_tunnel" "central_sharedtoprod_2" {
  name                  = "central-${terraform.workspace}toprod-ha"
  region                = "us-central1"
  vpn_gateway           = local.shared_vpn_gateway_central
  peer_gcp_gateway      = local.prod_vpn_gateway_central
  shared_secret         = "a secret message"
  router                = local.shared_router_central
  vpn_gateway_interface = 0
  project = var.sharedproject_id
}


#Shared to NonProd

## starts for dev
#shared to NonProd - East
resource "google_compute_vpn_tunnel" "east_sharedtononprod_dev_1" {
  name                  = "east-${terraform.workspace}tononprod-dev"
  region                = "us-east4"
  vpn_gateway           = local.shared_vpn_gateway_east
  peer_gcp_gateway      = local.nonprod_vpn_gateway_east_dev
  shared_secret         = "a secret message"
  router                = local.shared_router_east
  vpn_gateway_interface = 0
  project = var.sharedproject_id
}

#shared to NonProd - East - For HA
resource "google_compute_vpn_tunnel" "east_sharedtononprod_dev_2" {
  name                  = "east-${terraform.workspace}tononprod-dev-ha"
  region                = "us-east4"
  vpn_gateway           = local.shared_vpn_gateway_east
  peer_gcp_gateway      = local.nonprod_vpn_gateway_east_dev
  shared_secret         = "a secret message"
  router                = local.shared_router_east
  vpn_gateway_interface = 1
  project = var.sharedproject_id
}

#shared to NonProd  - Central
resource "google_compute_vpn_tunnel" "central_sharedtononprod_dev_1" {
  name                  = "central-${terraform.workspace}tononprod-dev"
  region                = "us-central1"
  vpn_gateway           = local.shared_vpn_gateway_central
  peer_gcp_gateway      = local.nonprod_vpn_gateway_central_dev
  shared_secret         = "a secret message"
  router                = local.shared_router_central
  vpn_gateway_interface = 1
  project = var.sharedproject_id
}

#shared to NonProd  - Central - For HA
resource "google_compute_vpn_tunnel" "central_sharedtononprod_2" {
  name                  = "central-${terraform.workspace}tononprod-dev-ha"
  region                = "us-central1"
  vpn_gateway           = local.shared_vpn_gateway_central
  peer_gcp_gateway      = local.nonprod_vpn_gateway_central_dev
  shared_secret         = "a secret message"
  router                = local.shared_router_central
  vpn_gateway_interface = 0
  project = var.sharedproject_id
}

## ends for dev

## starts for test
#shared to NonProd - East
resource "google_compute_vpn_tunnel" "east_sharedtononprod_test_1" {
  name                  = "east-${terraform.workspace}tononprod-test"
  region                = "us-east4"
  vpn_gateway           = local.shared_vpn_gateway_east
  peer_gcp_gateway      = local.nonprod_vpn_gateway_east_test
  shared_secret         = "a secret message"
  router                = local.shared_router_east
  vpn_gateway_interface = 0
  project = var.sharedproject_id
}

#shared to NonProd - East - For HA
resource "google_compute_vpn_tunnel" "east_sharedtononprod_test_2" {
  name                  = "east-${terraform.workspace}tononprod-test-ha"
  region                = "us-east4"
  vpn_gateway           = local.shared_vpn_gateway_east
  peer_gcp_gateway      = local.nonprod_vpn_gateway_east_test
  shared_secret         = "a secret message"
  router                = local.shared_router_east
  vpn_gateway_interface = 1
  project = var.sharedproject_id
}

#shared to NonProd  - Central
resource "google_compute_vpn_tunnel" "central_sharedtononprod_test_1" {
  name                  = "central-${terraform.workspace}tononprod-test"
  region                = "us-central1"
  vpn_gateway           = local.shared_vpn_gateway_central
  peer_gcp_gateway      = local.nonprod_vpn_gateway_central_test
  shared_secret         = "a secret message"
  router                = local.shared_router_central
  vpn_gateway_interface = 1
  project = var.sharedproject_id
}

#shared to NonProd  - Central - For HA
resource "google_compute_vpn_tunnel" "central_sharedtononprod_test_2" {
  name                  = "central-${terraform.workspace}tononprod-test-ha"
  region                = "us-central1"
  vpn_gateway           = local.shared_vpn_gateway_central
  peer_gcp_gateway      = local.nonprod_vpn_gateway_central_test
  shared_secret         = "a secret message"
  router                = local.shared_router_central
  vpn_gateway_interface = 0
  project = var.sharedproject_id
}

## ends for test


## starts for lab
#shared to NonProd - East
resource "google_compute_vpn_tunnel" "east_sharedtononprod_lab_1" {
  name                  = "east-${terraform.workspace}tononprod-lab"
  region                = "us-east4"
  vpn_gateway           = local.shared_vpn_gateway_east
  peer_gcp_gateway      = local.nonprod_vpn_gateway_east_lab
  shared_secret         = "a secret message"
  router                = local.shared_router_east
  vpn_gateway_interface = 0
  project = var.sharedproject_id
}

#shared to NonProd - East - For HA
resource "google_compute_vpn_tunnel" "east_sharedtononprod_lab_2" {
  name                  = "east-${terraform.workspace}tononprod-lab-ha"
  region                = "us-east4"
  vpn_gateway           = local.shared_vpn_gateway_east
  peer_gcp_gateway      = local.nonprod_vpn_gateway_east_lab
  shared_secret         = "a secret message"
  router                = local.shared_router_east
  vpn_gateway_interface = 1
  project = var.sharedproject_id
}

#shared to NonProd  - Central
resource "google_compute_vpn_tunnel" "central_sharedtononprod_lab_1" {
  name                  = "central-${terraform.workspace}tononprod-lab"
  region                = "us-central1"
  vpn_gateway           = local.shared_vpn_gateway_central
  peer_gcp_gateway      = local.nonprod_vpn_gateway_central_lab
  shared_secret         = "a secret message"
  router                = local.shared_router_central
  vpn_gateway_interface = 1
  project = var.sharedproject_id
}

#shared to NonProd  - Central - For HA
resource "google_compute_vpn_tunnel" "central_sharedtononprod_lab_2" {
  name                  = "central-${terraform.workspace}tononprod-lab-ha"
  region                = "us-central1"
  vpn_gateway           = local.shared_vpn_gateway_central
  peer_gcp_gateway      = local.nonprod_vpn_gateway_central_lab
  shared_secret         = "a secret message"
  router                = local.shared_router_central
  vpn_gateway_interface = 0
  project = var.sharedproject_id
}

## ends for lab

