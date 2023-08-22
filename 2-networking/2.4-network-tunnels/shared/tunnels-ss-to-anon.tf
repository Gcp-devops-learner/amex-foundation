
locals {
  /*
  ### Shared Remote Data
  shared_vpn_gateway_east_p    = data.terraform_remote_state.ss_networking.outputs.ss_vpn_gateway_e_name
  shared_vpn_gateway_central_p = data.terraform_remote_state.ss_networking.outputs.ss_vpn_gateway_c_name

  shared_router_east_p    = data.terraform_remote_state.ss_networking.outputs.shared_router_east
  shared_router_central_p = data.terraform_remote_state.ss_networking.outputs.shared_router_central
*/
}


/**********************************
Making Tunnels from Shared to anon
*********************************/
#shared to anon - East
resource "google_compute_vpn_tunnel" "east_sharedtoanon_1" {
  name                  = "east-ss-to-anon"
  region                = "us-east4"
  vpn_gateway           = local.shared_vpn_gateway_east
  peer_gcp_gateway      = data.terraform_remote_state.anon_network.outputs.anon_vpn_gateway_e_name
  shared_secret         = "a secret message"
  router                = local.shared_router_east
  vpn_gateway_interface = 0
  project               = var.sharedproject_id
}

#shared to anon - East - For HA
resource "google_compute_vpn_tunnel" "east_sharedtoanon_2" {
  name                  = "east-ss-to-anon-ha"
  region                = "us-east4"
  vpn_gateway           = local.shared_vpn_gateway_east
  peer_gcp_gateway      = data.terraform_remote_state.anon_network.outputs.anon_vpn_gateway_e_name
  shared_secret         = "a secret message"
  router                = local.shared_router_east
  vpn_gateway_interface = 1
  project               = var.sharedproject_id
}

#shared to anon  - Central
resource "google_compute_vpn_tunnel" "central_sharedtoanon_1" {
  name                  = "central-ss-to-anon"
  region                = "us-central1"
  vpn_gateway           = local.shared_vpn_gateway_central
  peer_gcp_gateway      = data.terraform_remote_state.anon_network.outputs.anon_vpn_gateway_c_name
  shared_secret         = "a secret message"
  router                = local.shared_router_central
  vpn_gateway_interface = 1
  project               = var.sharedproject_id
}

#shared to anon  - Central - For HA
resource "google_compute_vpn_tunnel" "central_sharedtoanon_2" {
  name                  = "central-ss-to-anon-ha"
  region                = "us-central1"
  vpn_gateway           = local.shared_vpn_gateway_central
  peer_gcp_gateway      = data.terraform_remote_state.anon_network.outputs.anon_vpn_gateway_c_name
  shared_secret         = "a secret message"
  router                = local.shared_router_central
  vpn_gateway_interface = 0
  project               = var.sharedproject_id
}
