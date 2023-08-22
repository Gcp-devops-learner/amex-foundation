
/**********************************
Making BGP Session from Shared to Non Prod -lab
*********************************/
#shared to NonProd-lab- East

resource "google_compute_router_interface" "east_shared_lab_router_interface1" {
  name       = "ss-east-router-interface1"
  project    = var.sharedproject_id
  router     = data.terraform_remote_state.ss_networking.outputs.ss_router_east_name
  region     = "us-east4"
  ip_range   = var.east_ss_router_interface1_iprange #"169.254.0.10/30"
  vpn_tunnel = google_compute_vpn_tunnel.east_sharedtononprod_lab_1.name
  depends_on = [
    google_compute_vpn_tunnel.east_sharedtoprod_1
  ]
}

resource "google_compute_router_peer" "east_shared-lab-router_peer1" {
  name                      = "east-ss-to-lab-router-peer1"
  router                    = data.terraform_remote_state.ss_networking.outputs.ss_router_east_name
  region                    = "us-east4"
  project                   = var.sharedproject_id
  peer_ip_address           = var.east_ss_router_peer1_ip #"169.254.0.11"
  peer_asn                  = 64720
  advertised_route_priority = 100
  interface                 = google_compute_router_interface.east_shared_lab_router_interface1.name
  depends_on = [
    google_compute_router_interface.east_shared_lab_router_interface1
  ]
}

#shared to NonProd-lab East - For HA

resource "google_compute_router_interface" "east_shared_lab_router_interface2" {
  name       = "ss-east-router-interface2"
  project    = var.sharedproject_id
  router     = data.terraform_remote_state.ss_networking.outputs.ss_router_east_name
  region     = "us-east4"
  ip_range   = var.east_ss_router_interface2_iprange #"169.254.0.14/30"
  vpn_tunnel = google_compute_vpn_tunnel.east_sharedtononprod_lab_2.name
  depends_on = [
    google_compute_vpn_tunnel.east_sharedtononprod_lab_2
  ]
}

resource "google_compute_router_peer" "east_shared_lab_router_peer2" {
  name                      = "east-ss-to-lab-router-peer2"
  router                    = data.terraform_remote_state.ss_networking.outputs.ss_router_east_name
  region                    = "us-east4"
  project                   = var.sharedproject_id
  peer_ip_address           = var.east_ss_router_peer2_ip #"169.254.0.15"
  peer_asn                  = 64720
  advertised_route_priority = 101
  interface                 = google_compute_router_interface.east_shared_lab_router_interface2.name
  depends_on = [
    google_compute_router_interface.east_shared_lab_router_interface2
  ]
}

#shared to NOnProd-lab Central

resource "google_compute_router_interface" "central_lab_shared_router_interface1" {
  name       = "ss-to-e0-central-router-interface1"
  project    = var.sharedproject_id
  router     = data.terraform_remote_state.ss_networking.outputs.ss_router_central_name
  region     = "us-central1"
  ip_range   = var.central_lab_router_interface1_iprange #"169.254.1.10/30"
  vpn_tunnel = google_compute_vpn_tunnel.central_sharedtononprod_lab_1.name
  depends_on = [
    google_compute_vpn_tunnel.central_sharedtononprod_lab_1
  ]
}

resource "google_compute_router_peer" "central_lab_shared_router_peer1" {
  name                      = "central-ss-to-lab-router-peer1"
  router                    = data.terraform_remote_state.ss_networking.outputs.ss_router_central_name
  region                    = "us-central1"
  project                   = var.sharedproject_id
  peer_ip_address           = var.central_ss_router_peer1_ip #"169.254.0.11"
  peer_asn                  = 64721
  advertised_route_priority = 100
  interface                 = google_compute_router_interface.central_lab_shared_router_interface1.name
  depends_on = [
    google_compute_router_interface.central_lab_shared_router_interface1
  ]
}

#shared to NonProd-lab Central - For HA

resource "google_compute_router_interface" "central_lab_shared_router_interface2" {
  name       = "lab-central-router-interface2"
  project    = var.sharedproject_id
  router     = data.terraform_remote_state.ss_networking.outputs.ss_router_central_name
  region     = "us-central1"
  ip_range   = var.central_lab_router_interface2_iprange #"169.254.1.14/30"
  vpn_tunnel = google_compute_vpn_tunnel.central_sharedtononprod_lab_2.name
  depends_on = [
    google_compute_vpn_tunnel.central_sharedtononprod_lab_2
  ]
}

resource "google_compute_router_peer" "central_lab_shared_router_peer2" {
  name                      = "central-ss-to-lab-router-peer2"
  router                    = data.terraform_remote_state.ss_networking.outputs.ss_router_central_name
  region                    = "us-central1"
  project                   = var.sharedproject_id
  peer_ip_address           = var.central_lab_router_peer2_ip #"169.254.1.15"
  peer_asn                  = 64721
  advertised_route_priority = 101
  interface                 = google_compute_router_interface.central_lab_shared_router_interface2.name
  depends_on = [
    google_compute_router_interface.central_lab_shared_router_interface2
  ]
}


