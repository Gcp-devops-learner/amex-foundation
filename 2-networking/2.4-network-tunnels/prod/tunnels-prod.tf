
locals {

  ###Prod Remote Data
  prod_vpn_gateway_east    = data.terraform_remote_state.prod_network.outputs.prod_vpn_gateway_e_name
  prod_vpn_gateway_central = data.terraform_remote_state.prod_network.outputs.prod_vpn_gateway_c_name


  prod_router_east    = data.terraform_remote_state.prod_network.outputs.e3_router_east
  prod_router_central = data.terraform_remote_state.prod_network.outputs.e3_router_central


  prod_router_east_name    = data.terraform_remote_state.prod_network.outputs.e3_router_east_name
  prod_router_central_name = data.terraform_remote_state.prod_network.outputs.e3_router_central_name
    
    ###Shared Remote Data
    shared_vpn_gateway_east = data.terraform_remote_state.ss_networking.outputs.ss_vpn_gateway_e_name
    shared_vpn_gateway_central = data.terraform_remote_state.ss_networking.outputs.ss_vpn_gateway_c_name
    shared_router_east = data.terraform_remote_state.ss_networking.outputs.ss_router_east
    shared_router_central = data.terraform_remote_state.ss_networking.outputs.ss_router_central
    shared_router_east_name = data.terraform_remote_state.ss_networking.outputs.ss_router_east_name
    shared_router_central_name = data.terraform_remote_state.ss_networking.outputs.ss_router_central_name
}


/***************************************
Code for Making Tunnels from Prod Starts
****************************************/
#Prod to shared - East
resource "google_compute_vpn_tunnel" "east_prodtoshared_1" {  
  name                  = "east-prod-to-shared-1"
  region                = "us-east4"
  vpn_gateway           = local.prod_vpn_gateway_east
  peer_gcp_gateway      = local.shared_vpn_gateway_east
  shared_secret         = "a secret message"
  router                = local.prod_router_east
  vpn_gateway_interface = 0
  project               = var.prodproject_id
}

#Prod to shared - East For HA
resource "google_compute_vpn_tunnel" "east_prodtoshared_2" {
  name                  = "east-toshared-2"
  region                = "us-east4"
  vpn_gateway           = local.prod_vpn_gateway_east
  peer_gcp_gateway      = local.shared_vpn_gateway_east
  shared_secret         = "a secret message"
  router                = local.prod_router_east
  vpn_gateway_interface = 1
  project               = var.prodproject_id
}

#Prod to shared - Central
resource "google_compute_vpn_tunnel" "central_prodtoshared_1" {
  name                  = "central-toshared-1"
  region                = "us-central1"
  vpn_gateway           = local.prod_vpn_gateway_central
  peer_gcp_gateway      = local.shared_vpn_gateway_central
  shared_secret         = "a secret message"
  router                = local.prod_router_central
  vpn_gateway_interface = 1
  project               = var.prodproject_id
}

#Prod to shared - Central - For HA

resource "google_compute_vpn_tunnel" "central_prodtoshared_2" {
  name                  = "central-toshared-2"
  region                = "us-central1"
  vpn_gateway           = local.prod_vpn_gateway_central
  peer_gcp_gateway      = local.shared_vpn_gateway_central
  shared_secret         = "a secret message"
  router                = local.prod_router_central
  vpn_gateway_interface = 0
  project               = var.prodproject_id
}


/***************************************
Code for Making Tunnels from Prod Ends
****************************************/

