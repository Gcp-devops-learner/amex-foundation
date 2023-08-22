locals {

  ### Shared Remote Data
  shared_vpn_gateway_east    = data.terraform_remote_state.ss_networking.outputs.ss_vpn_gateway_e_name
  shared_vpn_gateway_central = data.terraform_remote_state.ss_networking.outputs.ss_vpn_gateway_c_name

  shared_router_east    = data.terraform_remote_state.ss_networking.outputs.ss_router_east
  shared_router_central = data.terraform_remote_state.ss_networking.outputs.ss_router_central

  ### e2 Dev Remote Data

  # Routers

  nonprod_router_east_test         = data.terraform_remote_state.nonprod_network_e2.outputs.nonprod_router_east
  nonprod_router_central_test      = data.terraform_remote_state.nonprod_network_e2.outputs.nonprod_router_central

  nonprod_router_east_name_test    = data.terraform_remote_state.nonprod_network_e2.outputs.nonprod_router_east_name
  nonprod_router_central_name_test = data.terraform_remote_state.nonprod_network_e2.outputs.nonprod_router_central_name

  # Gateways
  nonprod_vpn_gateway_east_test    = data.terraform_remote_state.nonprod_network_e2.outputs.nonprod_vpn_gateway_e_name
  nonprod_vpn_gateway_central_test = data.terraform_remote_state.nonprod_network_e2.outputs.nonprod_vpn_gateway_c_name

}


/**********************************
Making Tunnels from NonProd Test
*********************************/


#NonProd to shared - East

resource "google_compute_vpn_tunnel" "east-nonprod_testtoshared_1" {
  name                  = "east-nonprodtoshared-test"
  region                = "us-east4"
  vpn_gateway           = local.nonprod_vpn_gateway_east_test
  peer_gcp_gateway      = local.shared_vpn_gateway_east
  shared_secret         = "a secret message"
  router                = local.nonprod_router_east_test
  vpn_gateway_interface = 0
  project = var.npproject_id
}


#NonProd to shared - East For HA

resource "google_compute_vpn_tunnel" "east-nonprod_testtoshared_2" {
  name                  = "east-nonprodtoshared-test-ha"
  region                = "us-east4"
  vpn_gateway           = local.nonprod_vpn_gateway_east_test
  peer_gcp_gateway      = local.shared_vpn_gateway_east
  shared_secret         = "a secret message"
  router                = local.nonprod_router_east_test
  vpn_gateway_interface = 1
  project = var.npproject_id
}



#NonProd to shared - Central
resource "google_compute_vpn_tunnel" "central-nonprod_testtoshared_1" {
  name                  = "central-nonprodtoshared-test"
  region                = "us-central1"
  vpn_gateway           = local.nonprod_vpn_gateway_central_test
  peer_gcp_gateway      = local.shared_vpn_gateway_central
  shared_secret         = "a secret message"
  router                = local.nonprod_router_central_test
  vpn_gateway_interface = 1
  project = var.npproject_id
}

#NonProd to shared - Central - For HA

resource "google_compute_vpn_tunnel" "central-nonprod_testtoshared_2" {
  name                  = "central-nonprodtoshared-test-ha"
  region                = "us-central1"
  vpn_gateway           = local.nonprod_vpn_gateway_central_test
  peer_gcp_gateway      = local.shared_vpn_gateway_central
  shared_secret         = "a secret message"
  router                = local.nonprod_router_central_test
  vpn_gateway_interface = 0
  project = var.npproject_id
}

