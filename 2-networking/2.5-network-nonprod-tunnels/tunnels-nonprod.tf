

locals {

######common
    shared_vpn_gateway_east = data.terraform_remote_state.ss_networking.outputs.shared_vpn_gateway_e_name
    shared_vpn_gateway_central = data.terraform_remote_state.ss_networking.outputs.shared_vpn_gateway_c_name
    shared_router_east = data.terraform_remote_state.ss_networking.outputs.shared_router_east
    shared_router_central = data.terraform_remote_state.ss_networking.outputs.shared_router_central
    shared_router_east_name = data.terraform_remote_state.ss_networking.outputs.shared_router_east_name
    shared_router_central_name = data.terraform_remote_state.ss_networking.outputs.shared_router_central_name

######for dev

    nonprod_vpn_gateway_east_dev = data.terraform_remote_state.nonprod_networking_dev.outputs.nonprod_vpn_gateway_e_name
    nonprod_vpn_gateway_central_dev = data.terraform_remote_state.nonprod_networking_dev.outputs.nonprod_vpn_gateway_c_name
    
    nonprod_router_east_dev = data.terraform_remote_state.nonprod_networking_dev.outputs.nonprod_router_east
    nonprod_router_central_dev = data.terraform_remote_state.nonprod_networking_dev.outputs.nonprod_router_central
    nonprod_router_east_name_dev = data.terraform_remote_state.nonprod_networking_dev.outputs.nonprod_router_east_name
    nonprod_router_central_name_dev = data.terraform_remote_state.nonprod_networking_dev.outputs.nonprod_router_central_name
    
#######for test
    nonprod_vpn_gateway_east_test = data.terraform_remote_state.nonprod_networking_test.outputs.nonprod_vpn_gateway_e_name
    nonprod_vpn_gateway_central_test = data.terraform_remote_state.nonprod_networking_test.outputs.nonprod_vpn_gateway_c_name
    
    nonprod_router_east_test = data.terraform_remote_state.nonprod_networking_test.outputs.nonprod_router_east
    nonprod_router_central_test = data.terraform_remote_state.nonprod_networking_test.outputs.nonprod_router_central
    nonprod_router_east_name_test = data.terraform_remote_state.nonprod_networking_test.outputs.nonprod_router_east_name
    nonprod_router_central_name_test = data.terraform_remote_state.nonprod_networking_test.outputs.nonprod_router_central_name

#######for lab
    nonprod_vpn_gateway_east_lab = data.terraform_remote_state.nonprod_networking_lab.outputs.nonprod_vpn_gateway_e_name
    nonprod_vpn_gateway_central_lab = data.terraform_remote_state.nonprod_networking_lab.outputs.nonprod_vpn_gateway_c_name
   
    nonprod_router_east_lab = data.terraform_remote_state.nonprod_networking_lab.outputs.nonprod_router_east
    nonprod_router_central_lab = data.terraform_remote_state.nonprod_networking_lab.outputs.nonprod_router_central
    nonprod_router_east_name_lab = data.terraform_remote_state.nonprod_networking_lab.outputs.nonprod_router_east_name
    nonprod_router_central_name_lab = data.terraform_remote_state.nonprod_networking_lab.outputs.nonprod_router_central_name
   

}



/**********************************
Making Tunnels from NonProd
*********************************/

## dev starts
#NonProd to shared - East
resource "google_compute_vpn_tunnel" "east-nonprod_devtoshared_1" {
  name                  = "east-nonprodtoshared-dev"
  region                = "us-east4"
  vpn_gateway           = local.nonprod_vpn_gateway_east_dev
  peer_gcp_gateway      = local.shared_vpn_gateway_east
  shared_secret         = "a secret message"
  router                = local.nonprod_router_east_dev
  vpn_gateway_interface = 0
  project = var.nonprodproject_id
}


#NonProd to shared - East For HA

resource "google_compute_vpn_tunnel" "east-nonprod_devtoshared_2" {
  name                  = "east-nonprodtoshared-dev-ha"
  region                = "us-east4"
  vpn_gateway           = local.nonprod_vpn_gateway_east_dev
  peer_gcp_gateway      = local.shared_vpn_gateway_east
  shared_secret         = "a secret message"
  router                = local.nonprod_router_east_dev
  vpn_gateway_interface = 1
  project = var.nonprodproject_id
}



#NonProd to shared - Central
resource "google_compute_vpn_tunnel" "central-nonprod_devtoshared_1" {
  name                  = "central-nonprodtoshared-dev"
  region                = "us-central1"
  vpn_gateway           = local.nonprod_vpn_gateway_central_dev
  peer_gcp_gateway      = local.shared_vpn_gateway_central
  shared_secret         = "a secret message"
  router                = local.nonprod_router_central_dev
  vpn_gateway_interface = 1
  project = var.nonprodproject_id
}

#NonProd to shared - Central - For HA

resource "google_compute_vpn_tunnel" "central-nonprod_devtoshared_2" {
  name                  = "central-nonprodtoshared-dev-ha"
  region                = "us-central1"
  vpn_gateway           = local.nonprod_vpn_gateway_central_dev
  peer_gcp_gateway      = local.shared_vpn_gateway_central
  shared_secret         = "a secret message"
  router                = local.nonprod_router_central_dev
  vpn_gateway_interface = 0
  project = var.nonprodproject_id
}


## dev ends

/**********************************
Making Tunnels from NonProd
*********************************/
## starts for test
#NonProd to shared - East
resource "google_compute_vpn_tunnel" "east-nonprod_testtoshared_1" {
  name                  = "east-nonprodtoshared-test"
  region                = "us-east4"
  vpn_gateway           = local.nonprod_vpn_gateway_east_test
  peer_gcp_gateway      = local.shared_vpn_gateway_east
  shared_secret         = "a secret message"
  router                = local.nonprod_router_east_test
  vpn_gateway_interface = 0
  project = var.nonprodproject_id
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
  project = var.nonprodproject_id
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
  project = var.nonprodproject_id
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
  project = var.nonprodproject_id
}

#ends for test

/**********************************
Making Tunnels from NonProd
*********************************/
#starts for lab
#NonProd to shared - East
resource "google_compute_vpn_tunnel" "east-nonprod_labtoshared_1" {
  name                  = "east-nonprodtoshared-lab"
  region                = "us-east4"
  vpn_gateway           = local.nonprod_vpn_gateway_east_lab
  peer_gcp_gateway      = local.shared_vpn_gateway_east
  shared_secret         = "a secret message"
  router                = local.nonprod_router_east_lab
  vpn_gateway_interface = 0
  project = var.nonprodproject_id
}


#NonProd to shared - East For HA

resource "google_compute_vpn_tunnel" "east-nonprod_labtoshared_2" {
  name                  = "east-nonprodtoshared-lab-ha"
  region                = "us-east4"
  vpn_gateway           = local.nonprod_vpn_gateway_east_lab
  peer_gcp_gateway      = local.shared_vpn_gateway_east
  shared_secret         = "a secret message"
  router                = local.nonprod_router_east_lab
  vpn_gateway_interface = 1
  project = var.nonprodproject_id
}



#NonProd to shared - Central
resource "google_compute_vpn_tunnel" "central-nonprod_labtoshared_1" {
  name                  = "central-nonprodtoshared-lab"
  region                = "us-central1"
  vpn_gateway           = local.nonprod_vpn_gateway_central_lab
  peer_gcp_gateway      = local.shared_vpn_gateway_central
  shared_secret         = "a secret message"
  router                = local.nonprod_router_central_lab
  vpn_gateway_interface = 1
  project = var.nonprodproject_id
}

#NonProd to shared - Central - For HA

resource "google_compute_vpn_tunnel" "central-nonprod_labtoshared_2" {
  name                  = "central-nonprodtoshared-lab-ha"
  region                = "us-central1"
  vpn_gateway           = local.nonprod_vpn_gateway_central_lab
  peer_gcp_gateway      = local.shared_vpn_gateway_central
  shared_secret         = "a secret message"
  router                = local.nonprod_router_central_lab
  vpn_gateway_interface = 0
  project = var.nonprodproject_id
}

##ends for lab







