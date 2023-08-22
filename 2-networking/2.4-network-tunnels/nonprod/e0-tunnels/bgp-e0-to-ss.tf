
/**********************************
Making BGP Session from Lab (E0) to Shared
*********************************/
#Lab (E0) to Shared- East

resource "google_compute_router_interface" "east_e0_lab_router_interface1" {
  name     = "e0-east-router-interface1"
  router   = data.terraform_remote_state.nonprod_network_e0.outputs.nonprod_router_east_name
  region   = "us-east4"
  project  = var.nonprodproject_id 
  ip_range = var.east_lab_router_interface1_iprange
  vpn_tunnel = google_compute_vpn_tunnel.east-nonprod_labtoshared_1.name
  depends_on = [
    google_compute_vpn_tunnel.east-nonprod_labtoshared_1
  ]

}

resource "google_compute_router_peer" "east_e0-lab-router_peer1" {
  name                      = "east-router-peer1"
  router                    = data.terraform_remote_state.nonprod_network_e0.outputs.nonprod_router_east_name
  region                    = "us-east4"
  project                   = var.nonprodproject_id
  peer_ip_address           = var.east_lab_router_peer1_ip
  peer_asn                  = 64530
  advertised_route_priority = 100
  interface = google_compute_router_interface.east_e0_lab_router_interface1.name
  depends_on = [
    google_compute_router_interface.east_e0_lab_router_interface1
  ]
  
}

#NonProd-lab East to Shared - For HA

resource "google_compute_router_interface" "east_e0_lab_router_interface2" {
  name     = "lab-east-router-interface2"
  router   = data.terraform_remote_state.nonprod_network_e0.outputs.nonprod_router_east_name
  region   = "us-east4"
  project  = var.nonprodproject_id
  ip_range = var.east_lab_router_interface2_iprange 
  vpn_tunnel = google_compute_vpn_tunnel.east-nonprod_labtoshared_2.name
  depends_on = [
    google_compute_vpn_tunnel.east-nonprod_labtoshared_2
  ]
}

resource "google_compute_router_peer" "east_e0_lab_router_peer2" {
  name                      = "east-lab-router-peer2"
  router                    = data.terraform_remote_state.nonprod_network_e0.outputs.nonprod_router_east_name
  region                    = "us-east4"
  project                   = var.nonprodproject_id 
  peer_ip_address           = var.east_lab_router_peer2_ip #"169.254.0.5"
  peer_asn                  = 64530
  advertised_route_priority = 101
  interface = google_compute_router_interface.east_e0_lab_router_interface2.name
  depends_on = [
    google_compute_router_interface.east_e0_lab_router_interface2
  ]
}

#shared to NOnProd-lab Central

resource "google_compute_router_interface" "central_lab_e0_router_interface1" {
  name       = "lab-central-router-interface1"
  router     = data.terraform_remote_state.nonprod_network_e0.outputs.nonprod_router_central_name
  region     = "us-central1"
  project    = var.nonprodproject_id
  ip_range   = var.central_lab_router_interface1_iprange
  vpn_tunnel = google_compute_vpn_tunnel.central-nonprod_labtoshared_1.name
  depends_on = [
      google_compute_vpn_tunnel.central-nonprod_labtoshared_1
  ]
}

resource "google_compute_router_peer" "central_lab_e0_router_peer1" {
  name                      = "central-lab-router-peer1"
  router                    = data.terraform_remote_state.nonprod_network_e0.outputs.nonprod_router_central_name
  region                    = "us-central1"
  project                   = var.nonprodproject_id 
  peer_ip_address           = var.central_lab_router_peer1_ip
  peer_asn                  = 64531
  advertised_route_priority = 100
  interface                 = google_compute_router_interface.central_lab_e0_router_interface1.name
  depends_on                = [
      google_compute_router_interface.central_lab_e0_router_interface1
  ]
}

# NonProd-lab(E0) Central to Shared - For HA

resource "google_compute_router_interface" "central_lab_e0_router_interface2" {
  name     = "lab-central-router-interface2"
  router   = data.terraform_remote_state.nonprod_network_e0.outputs.nonprod_router_central_name
  region   = "us-central1"
  project  = var.nonprodproject_id
  ip_range = var.central_lab_router_interface2_iprange
  vpn_tunnel = google_compute_vpn_tunnel.central-nonprod_labtoshared_2.name 
  depends_on = [
      google_compute_vpn_tunnel.central-nonprod_labtoshared_2
  ]
}

resource "google_compute_router_peer" "central_lab_e0_router_peer2" {
  name                      = "central-lab-router-peer2"
  router                    = data.terraform_remote_state.nonprod_network_e0.outputs.nonprod_router_central_name
  region                    = "us-central1"
  project                   = var.nonprodproject_id
  peer_ip_address           = var.central_lab_router_peer2_ip
  peer_asn                  = 64531
  advertised_route_priority = 101
  interface                 = google_compute_router_interface.central_lab_e0_router_interface2.name
  depends_on                = [
      google_compute_router_interface.central_lab_e0_router_interface2
  ]
}


