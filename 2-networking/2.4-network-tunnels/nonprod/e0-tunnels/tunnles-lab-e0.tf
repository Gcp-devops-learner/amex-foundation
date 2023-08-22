locals {

  ### Shared Remote Data
  shared_vpn_gateway_east    = data.terraform_remote_state.ss_networking.outputs.ss_vpn_gateway_e_name
  shared_vpn_gateway_central = data.terraform_remote_state.ss_networking.outputs.ss_vpn_gateway_c_name

  shared_router_east    = data.terraform_remote_state.ss_networking.outputs.ss_router_east
  shared_router_central = data.terraform_remote_state.ss_networking.outputs.ss_router_central

}

/**********************************
Making Tunnels from NonProd Lab
*********************************/

# Lab NonProd to shared - East

resource "google_compute_vpn_tunnel" "east-nonprod_labtoshared_1" {

  name   = "east-nonprodtoshared-lab-e0"
  region = "us-east4"
  vpn_gateway      = data.terraform_remote_state.nonprod_network_e0.outputs.nonprod_vpn_gateway_e_name
  peer_gcp_gateway = local.shared_vpn_gateway_east
  shared_secret    = "a secret message"
  router                = data.terraform_remote_state.nonprod_network_e0.outputs.nonprod_router_east_name
  vpn_gateway_interface = 0
  project               = var.nonprodproject_id

}


#NonProd to shared - East For HA

resource "google_compute_vpn_tunnel" "east-nonprod_labtoshared_2" {
  name   = "east-nonprodtoshared-lab-ha"
  region = "us-east4"
  vpn_gateway      = data.terraform_remote_state.nonprod_network_e0.outputs.nonprod_vpn_gateway_e_name
  peer_gcp_gateway = local.shared_vpn_gateway_east
  shared_secret    = "a secret message"
  router                = data.terraform_remote_state.nonprod_network_e0.outputs.nonprod_router_east_name
  vpn_gateway_interface = 1
  project               = var.nonprodproject_id
}



#NonProd to shared - Central
resource "google_compute_vpn_tunnel" "central-nonprod_labtoshared_1" {
  name   = "central-nonprodtoshared-lab"
  region = "us-central1"
  vpn_gateway      = data.terraform_remote_state.nonprod_network_e0.outputs.nonprod_vpn_gateway_c_name
  peer_gcp_gateway = local.shared_vpn_gateway_central
  shared_secret    = "a secret message"
  router                = data.terraform_remote_state.nonprod_network_e0.outputs.nonprod_router_central_name
  vpn_gateway_interface = 1
  project               = var.nonprodproject_id
}

#NonProd to shared - Central - For HA

resource "google_compute_vpn_tunnel" "central-nonprod_labtoshared_2" {
  name   = "central-nonprodtoshared-lab-ha"
  region = "us-central1"
  vpn_gateway      = data.terraform_remote_state.nonprod_network_e0.outputs.nonprod_vpn_gateway_c_name
  peer_gcp_gateway = local.shared_vpn_gateway_central
  shared_secret    = "a secret message"
  router                = data.terraform_remote_state.nonprod_network_e0.outputs.nonprod_router_central_name
  vpn_gateway_interface = 0
  project               = var.nonprodproject_id
}