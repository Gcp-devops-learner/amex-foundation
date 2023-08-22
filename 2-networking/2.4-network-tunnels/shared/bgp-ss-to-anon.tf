
/**********************************
Making BGP Session from Shared
*********************************/
#shared to anon- East

resource "google_compute_router_interface" "east_shared_router_interface1" {
  name       = "sstoanon-east-router-interface1"
  router     = google_compute_router.ss_router_east.name
  region     = "us-east4"
  project    = var.sharedproject_id
  ip_range   = var.east_router_interface1_iprange 
  vpn_tunnel = google_compute_vpn_tunnel.east_sharedtoanon_1.name
  depends_on = [
    google_compute_vpn_tunnel.east_sharedtoanon_1
  ]
}

resource "google_compute_router_peer" "east_shared-router_peer1" {
  name                      = "east-router-peer1"
  router                    = google_compute_router.ss_router_east.name
  region                    = "us-east4"
  project                   = var.sharedproject_id
  peer_ip_address           = var.east_router_peer1_ip 
  peer_asn                  = 64520
  advertised_route_priority = 100
  interface                 = google_compute_router_interface.east_shared_router_interface1.name
  depends_on = [
    google_compute_router_interface.east_shared_router_interface1
  ]
}

#shared to anon- East - For HA

resource "google_compute_router_interface" "east_shared_router_interface2" {
  name       = "sstoanon-east-router-interface2"
  router     = google_compute_router.ss_router_east.name
  region     = "us-east4"
  project    = var.sharedproject_id
  ip_range   = var.east_router_interface2_iprange #"169.254.0.6/30"
  vpn_tunnel = google_compute_vpn_tunnel.east_sharedtoanon_2.name
  depends_on = [
    google_compute_vpn_tunnel.east_sharedtoanon_2
  ]
}

resource "google_compute_router_peer" "east_shared_router_peer2" {
  name                      = "east-router-peer2"
  router                    = google_compute_router.ss_router_east.name
  region                    = "us-east4"
  project                   = var.sharedproject_id
  peer_ip_address           = var.east_router_peer2_ip #"169.254.0.5"
  peer_asn                  = 64520
  advertised_route_priority = 100
  interface                 = google_compute_router_interface.east_shared_router_interface2.name
  depends_on = [
    google_compute_router_interface.east_shared_router_interface2
  ]
}




#shared to anon- Central

resource "google_compute_router_interface" "central_shared_router_interface1" {
  name       = "sstoanon-central-router-interface1"
  router     = google_compute_router.ss_router_central.name
  region     = "us-central1"
  project    = var.sharedproject_id
  ip_range   = var.central_router_interface1_iprange #"169.254.1.2/30"
  vpn_tunnel = google_compute_vpn_tunnel.central_sharedtoanon_1.name
  depends_on = [
    google_compute_vpn_tunnel.central_sharedtoanon_1
  ]
}

resource "google_compute_router_peer" "central_shared_router_peer1" {
  name                      = "central-router-peer1"
  router                    = google_compute_router.ss_router_central.name
  region                    = "us-central1"
  project                   = var.sharedproject_id
  peer_ip_address           = var.central_router_peer1_ip #"169.254.1.1"
  peer_asn                  = 64521
  advertised_route_priority = 100
  interface                 = google_compute_router_interface.central_shared_router_interface1.name
  depends_on = [
    google_compute_router_interface.central_shared_router_interface1
  ]
}

#shared to anon- Central - For HA

resource "google_compute_router_interface" "central_shared_router_interface2" {
  name       = "sstoanon-central-router-interface2"
  router     = google_compute_router.ss_router_central.name
  region     = "us-central1"
  project    = var.sharedproject_id
  ip_range   = var.central_router_interface2_iprange #"169.254.1.6/30"
  vpn_tunnel = google_compute_vpn_tunnel.central_sharedtoanon_2.name
  depends_on = [
    google_compute_vpn_tunnel.central_sharedtoanon_1
  ]
}

resource "google_compute_router_peer" "central_shared_router_peer2" {
  name                      = "central-router-peer2"
  router                    = google_compute_router.ss_router_central.name
  region                    = "us-central1"
  project                   = var.sharedproject_id
  peer_ip_address           = var.central_router_peer2_ip #"169.254.1.5"
  peer_asn                  = 64521
  advertised_route_priority = 100
  interface                 = google_compute_router_interface.central_shared_router_interface2.name
  depends_on = [
    google_compute_router_interface.central_shared_router_interface2
  ]
}