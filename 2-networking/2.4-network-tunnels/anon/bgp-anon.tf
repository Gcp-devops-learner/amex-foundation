/**********************************
Making BGP Session from anon
**********************************/
#anon to shared - East

resource "google_compute_router_interface" "east_router_interface1" {
  name       = "anon-east-router-interface1"
  router     =  data.terraform_remote_state.anon_network.outputs.nonprod_router_east.router.id
  region     = "us-east4"
  ip_range   = var.east_router_interface1_iprange 
  vpn_tunnel = google_compute_vpn_tunnel.east_anontoshared_1.name
  depends_on = [google_compute_vpn_tunnel.east_anontoshared_1]
}

resource "google_compute_router_peer" "east_router_peer1" {
  name                      = "east-router-peer1"
  router                    = data.terraform_remote_state.anon_network.outputs.nonprod_router_east.router.id
  region                    = "us-east4"
  peer_ip_address           = var.east_router_peer1_ip 
  peer_asn                  = 64530
  advertised_route_priority = 100
  interface                 = google_compute_router_interface.east_router_interface1.name
  depends_on = [google_compute_router_interface.east_router_interface1]
}


#anon to shared - East - For HA

resource "google_compute_router_interface" "east_router_interface2" {
  name       = "anon-east-router-interface2"
  router     = data.terraform_remote_state.anon_network.outputs.nonprod_router_central.router.id
  region     = "us-east4"
  ip_range   = var.east_router_interface2_iprange
  vpn_tunnel = google_compute_vpn_tunnel.east_anontoshared_2.name
  depends_on = [
    google_compute_vpn_tunnel.east_anontoshared_2
  ]
}

resource "google_compute_router_peer" "east_router_peer2" {
  name                      = "east-router-peer2"
  router                    = data.terraform_remote_state.anon_network.outputs.nonprod_router_central.router.id
  region                    = "us-east4"
  peer_ip_address           = var.east_router_peer2_ip 
  peer_asn                  = 64530
  advertised_route_priority = 100
  interface                 = google_compute_router_interface.east_router_interface2.name
  depends_on = [
    google_compute_router_interface.east_router_interface2
  ]
}


/**********************************
Making BGP Session from anon
**********************************/
#anon to shared - central

resource "google_compute_router_interface" "central_router_interface1" {
  name       = "anon-central-router-interface1"
  router     = data.terraform_remote_state.anon_network.outputs.nonprod_router_east.router.id
  region     = "us-central1"
  ip_range   = var.central_router_interface1_iprange
  vpn_tunnel = google_compute_vpn_tunnel.central_anontoshared_1.name
  depends_on = [
    google_compute_vpn_tunnel.central_anontoshared_1
  ]
}

resource "google_compute_router_peer" "central-router_peer1" {
  name                      = "central-router-peer1"
  router                    = data.terraform_remote_state.anon_network.outputs.nonprod_router_east.router.id
  region                    = "us-central1"
  peer_ip_address           = var.central_router_peer1_ip 
  peer_asn                  = 64531
  advertised_route_priority = 100
  interface                 = google_compute_router_interface.central_router_interface1.name
  depends_on = [
    google_compute_router_interface.central_router_interface1
  ]
}

#anon to shared - central - fOr HA

resource "google_compute_router_interface" "central_router_interface2" {
  name       = "anon-central-router-interface2"
  router     = data.terraform_remote_state.anon_network.outputs.nonprod_router_central.router.id
  region     = "us-central1"
  ip_range   = var.central_router_interface2_iprange
  vpn_tunnel = google_compute_vpn_tunnel.central_anontoshared_2.name
  depends_on = [
    google_compute_vpn_tunnel.central_anontoshared_2
  ]
}

resource "google_compute_router_peer" "central_router_peer2" {
  name                      = "central-router-peer2"
  router                    = data.terraform_remote_state.anon_network.outputs.nonprod_router_central.router.id
  region                    = "us-central1"
  peer_ip_address           = var.central_router_peer2_ip 
  peer_asn                  = 64531
  advertised_route_priority = 100
  interface                 = google_compute_router_interface.central_router_interface2.name
  depends_on = [
    google_compute_router_interface.central_router_interface2
  ]
}



