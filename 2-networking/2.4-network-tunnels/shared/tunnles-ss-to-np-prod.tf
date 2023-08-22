locals {

  ###Prod Remote Data
  prod_vpn_gateway_east    = data.terraform_remote_state.prod_network.outputs.prod_vpn_gateway_e_name
  prod_vpn_gateway_central = data.terraform_remote_state.prod_network.outputs.prod_vpn_gateway_c_name


  prod_router_east    = data.terraform_remote_state.prod_network.outputs.e3_router_east
  prod_router_central = data.terraform_remote_state.prod_network.outputs.e3_router_central


  prod_router_east_name    = data.terraform_remote_state.prod_network.outputs.e3_router_east_name
  prod_router_central_name = data.terraform_remote_state.prod_network.outputs.e3_router_central_name


  ### E0 Lab Remote Data

  # Routers

  nonprod_router_east_lab    = data.terraform_remote_state.nonprod_network_e0.outputs.nonprod_router_east
  nonprod_router_central_lab = data.terraform_remote_state.nonprod_network_e0.outputs.nonprod_router_central

  nonprod_router_east_name_lab    = data.terraform_remote_state.nonprod_network_e0.outputs.nonprod_router_east_name
  nonprod_router_central_name_lab = data.terraform_remote_state.nonprod_network_e0.outputs.nonprod_router_central_name

  # Gateways
  nonprod_vpn_gateway_east_lab    = data.terraform_remote_state.nonprod_network_e0.outputs.nonprod_vpn_gateway_e_name
  nonprod_vpn_gateway_central_lab = data.terraform_remote_state.nonprod_network_e0.outputs.nonprod_vpn_gateway_c_name


  ### E1 Dev Remote Data

  # Routers

  nonprod_router_east_dev    = data.terraform_remote_state.nonprod_network_e1.outputs.nonprod_router_east
  nonprod_router_central_dev = data.terraform_remote_state.nonprod_network_e1.outputs.nonprod_router_central

  nonprod_router_east_name_dev    = data.terraform_remote_state.nonprod_network_e1.outputs.nonprod_router_east_name
  nonprod_router_central_name_dev = data.terraform_remote_state.nonprod_network_e1.outputs.nonprod_router_central_name

  # Gateways
  nonprod_vpn_gateway_east_dev    = data.terraform_remote_state.nonprod_network_e1.outputs.nonprod_vpn_gateway_e_name
  nonprod_vpn_gateway_central_dev = data.terraform_remote_state.nonprod_network_e1.outputs.nonprod_vpn_gateway_c_name

  ### E2 Test Remote Data

  # Routers

  nonprod_router_east_test    = data.terraform_remote_state.nonprod_network_e2.outputs.nonprod_router_east
  nonprod_router_central_test = data.terraform_remote_state.nonprod_network_e2.outputs.nonprod_router_central

  nonprod_router_east_name_test    = data.terraform_remote_state.nonprod_network_e2.outputs.nonprod_router_east_name
  nonprod_router_central_name_test = data.terraform_remote_state.nonprod_network_e2.outputs.nonprod_router_central_name

  # Gateways
  nonprod_vpn_gateway_east_test    = data.terraform_remote_state.nonprod_network_e2.outputs.nonprod_vpn_gateway_e_name
  nonprod_vpn_gateway_central_test = data.terraform_remote_state.nonprod_network_e2.outputs.nonprod_vpn_gateway_c_name

  ### Shared Remote Data
  shared_vpn_gateway_east    = data.terraform_remote_state.ss_networking.outputs.ss_vpn_gateway_e_name
  shared_vpn_gateway_central = data.terraform_remote_state.ss_networking.outputs.ss_vpn_gateway_c_name

  shared_router_east    = data.terraform_remote_state.ss_networking.outputs.ss_router_east
  shared_router_central = data.terraform_remote_state.ss_networking.outputs.ss_router_central
}

#Shared to NonProd

## starts for lab (E0)

#shared to NonProd - East
resource "google_compute_vpn_tunnel" "east_sharedtononprod_lab_1" {
  name                  = "east-to-nonprod-lab"
  region                = "us-east4"
  vpn_gateway           = local.shared_vpn_gateway_east
  peer_gcp_gateway      = local.nonprod_vpn_gateway_east_lab
  shared_secret         = "a secret message"
  router                = local.shared_router_east
  vpn_gateway_interface = 0
  project               = var.sharedproject_id
}

#shared to NonProd - East - For HA
resource "google_compute_vpn_tunnel" "east_sharedtononprod_lab_2" {
  name                  = "east-to-nonprod-lab-ha"
  region                = "us-east4"
  vpn_gateway           = local.shared_vpn_gateway_east
  peer_gcp_gateway      = local.nonprod_vpn_gateway_east_lab
  shared_secret         = "a secret message"
  router                = local.shared_router_east
  vpn_gateway_interface = 1
  project               = var.sharedproject_id
}

#shared to NonProd  - Central
resource "google_compute_vpn_tunnel" "central_sharedtononprod_lab_1" {
  name                  = "central-to-nonprod-lab"
  region                = "us-central1"
  vpn_gateway           = local.shared_vpn_gateway_central
  peer_gcp_gateway      = local.nonprod_vpn_gateway_central_lab
  shared_secret         = "a secret message"
  router                = local.shared_router_central
  vpn_gateway_interface = 1
  project               = var.sharedproject_id
}

#shared to NonProd  - Central - For HA
resource "google_compute_vpn_tunnel" "central_sharedtononprod_lab_2" {
  name                  = "central-to-nonprod-lab-ha"
  region                = "us-central1"
  vpn_gateway           = local.shared_vpn_gateway_central
  peer_gcp_gateway      = local.nonprod_vpn_gateway_central_lab
  shared_secret         = "a secret message"
  router                = local.shared_router_central
  vpn_gateway_interface = 0
  project               = var.sharedproject_id
}

## ends for lab

## starts for dev (E1)

#shared to NonProd - East
resource "google_compute_vpn_tunnel" "east_sharedtononprod_dev_1" {
  name                  = "east-to-nonprod-dev"
  region                = "us-east4"
  vpn_gateway           = local.shared_vpn_gateway_east
  peer_gcp_gateway      = local.nonprod_vpn_gateway_east_dev
  shared_secret         = "a secret message"
  router                = local.shared_router_east
  vpn_gateway_interface = 0
  project               = var.sharedproject_id
}

#shared to NonProd - East - For HA
resource "google_compute_vpn_tunnel" "east_sharedtononprod_dev_2" {
  name                  = "east-to-nonprod-dev-ha"
  region                = "us-east4"
  vpn_gateway           = local.shared_vpn_gateway_east
  peer_gcp_gateway      = local.nonprod_vpn_gateway_east_dev
  shared_secret         = "a secret message"
  router                = local.shared_router_east
  vpn_gateway_interface = 1
  project               = var.sharedproject_id
}

#shared to NonProd  - Central
resource "google_compute_vpn_tunnel" "central_sharedtononprod_dev_1" {
  name                  = "central-to-nonprod-dev"
  region                = "us-central1"
  vpn_gateway           = local.shared_vpn_gateway_central
  peer_gcp_gateway      = local.nonprod_vpn_gateway_central_dev
  shared_secret         = "a secret message"
  router                = local.shared_router_central
  vpn_gateway_interface = 1
  project               = var.sharedproject_id
}

#shared to NonProd  - Central - For HA
resource "google_compute_vpn_tunnel" "central_sharedtononprod_dev_2" {
  name                  = "central-to-nonprod-dev-ha"
  region                = "us-central1"
  vpn_gateway           = local.shared_vpn_gateway_central
  peer_gcp_gateway      = local.nonprod_vpn_gateway_central_dev
  shared_secret         = "a secret message"
  router                = local.shared_router_central
  vpn_gateway_interface = 0
  project               = var.sharedproject_id
}

## ends for dev

## starts for test (E2)

#shared to NonProd - East
resource "google_compute_vpn_tunnel" "east_sharedtononprod_test_1" {
  name                  = "east-to-nonprod-test"
  region                = "us-east4"
  vpn_gateway           = local.shared_vpn_gateway_east
  peer_gcp_gateway      = local.nonprod_vpn_gateway_east_test
  shared_secret         = "a secret message"
  router                = local.shared_router_east
  vpn_gateway_interface = 0
  project               = var.sharedproject_id
}

#shared to NonProd - East - For HA
resource "google_compute_vpn_tunnel" "east_sharedtononprod_test_2" {
  name                  = "east-to-nonprod-test-ha"
  region                = "us-east4"
  vpn_gateway           = local.shared_vpn_gateway_east
  peer_gcp_gateway      = local.nonprod_vpn_gateway_east_test
  shared_secret         = "a secret message"
  router                = local.shared_router_east
  vpn_gateway_interface = 1
  project               = var.sharedproject_id
}

#shared to NonProd  - Central
resource "google_compute_vpn_tunnel" "central_sharedtononprod_test_1" {
  name                  = "central-to-nonprod-test"
  region                = "us-central1"
  vpn_gateway           = local.shared_vpn_gateway_central
  peer_gcp_gateway      = local.nonprod_vpn_gateway_central_test
  shared_secret         = "a secret message"
  router                = local.shared_router_central
  vpn_gateway_interface = 1
  project               = var.sharedproject_id
}

#shared to NonProd  - Central - For HA
resource "google_compute_vpn_tunnel" "central_sharedtononprod_test_2" {
  name                  = "central-to-nonprod-test-ha"
  region                = "us-central1"
  vpn_gateway           = local.shared_vpn_gateway_central
  peer_gcp_gateway      = local.nonprod_vpn_gateway_central_test
  shared_secret         = "a secret message"
  router                = local.shared_router_central
  vpn_gateway_interface = 0
  project               = var.sharedproject_id
}

## ends for test

