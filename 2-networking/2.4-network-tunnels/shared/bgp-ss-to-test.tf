
/**********************************
Making BGP Session from Shared to Non Prod -test
*********************************/
#shared to NonProd-test- East

resource "google_compute_router_interface" "east_shared_test_router_interface1" {
  name       = "test-east-router-interface1"
  project    = var.sharedproject_id
  router     = google_compute_router.ss_router_east.name
  region     = "us-east4"
  ip_range   = var.east_test_router_interface1_iprange #"169.254.1.9/30"
  vpn_tunnel = google_compute_vpn_tunnel.east_sharedtononprod_test_1.name
  depends_on = [
    google_compute_vpn_tunnel.east_sharedtoprod_1
  ]
}

resource "google_compute_router_peer" "east_shared-test-router_peer1" {
  name                      = "east-router-peer1"
  router                    = google_compute_router.ss_router_east.name
  region                    = "us-east4"
  project                   = var.sharedproject_id
  peer_ip_address           = var.east_test_router_peer1_ip #"169.254.1.10"
  peer_asn                  = 64740
  advertised_route_priority = 100
  interface                 = google_compute_router_interface.east_shared_test_router_interface1.name
  depends_on = [
    google_compute_router_interface.east_shared_test_router_interface1
  ]
}

#shared to Prod- East - For HA

resource "google_compute_router_interface" "east_shared_test_router_interface2" {
  name       = "test-east-router-interface2"
  project    = var.sharedproject_id
  router     = google_compute_router.ss_router_east.name
  region     = "us-east4"
  ip_range   = var.east_test_router_interface2_iprange #"169.254.1.13/30"
  vpn_tunnel = google_compute_vpn_tunnel.east_sharedtononprod_test_2.name
  depends_on = [
    google_compute_vpn_tunnel.east_sharedtononprod_test_2
  ]
}

resource "google_compute_router_peer" "east_shared_test_router_peer2" {
  name                      = "east-test-router-peer2"
  router                    = google_compute_router.ss_router_east.name
  region                    = "us-east4"
  project                   = var.sharedproject_id
  peer_ip_address           = var.east_test_router_peer2_ip #"169.254.1.14"
  peer_asn                  = 64740
  advertised_route_priority = 100
  interface                 = google_compute_router_interface.east_shared_test_router_interface2.name
  depends_on = [
    google_compute_router_interface.east_shared_test_router_interface2
  ]
}



#shared to NonProd-test Central

#shared to NonProd- Central

resource "google_compute_router_interface" "central_test_shared_router_interface1" {
  name       = "test-central-router-interface1"
  project    = var.sharedproject_id
  router     = google_compute_router.ss_router_central.name
  region     = "us-central1"
  ip_range   = var.central_test_router_interface1_iprange #"169.254.1.17/30"
  vpn_tunnel = google_compute_vpn_tunnel.central_sharedtononprod_test_1.name
  depends_on = [
    google_compute_vpn_tunnel.central_sharedtononprod_test_1
  ]
}

resource "google_compute_router_peer" "central_test_shared_router_peer1" {
  name                      = "central-test-router-peer1"
  router                    = google_compute_router.ss_router_central.name
  region                    = "us-central1"
  project                   = var.sharedproject_id
  peer_ip_address           = var.central_test_router_peer1_ip #"169.254.1.18"
  peer_asn                  = 64740
  advertised_route_priority = 100
  interface                 = google_compute_router_interface.central_test_shared_router_interface1.name
  depends_on = [
    google_compute_router_interface.central_test_shared_router_interface1
  ]
}

#shared to Prod- Central - For HA

resource "google_compute_router_interface" "central_test_shared_router_interface2" {
  name       = "test-central-router-interface2"
  project    = var.sharedproject_id
  router     = google_compute_router.ss_router_central.name
  region     = "us-central1"
  ip_range   = var.central_test_router_interface2_iprange #"169.254.1.21/30"
  vpn_tunnel = google_compute_vpn_tunnel.central_sharedtononprod_dev_2.name
  depends_on = [
    google_compute_vpn_tunnel.central_sharedtononprod_dev_2
  ]
}

resource "google_compute_router_peer" "central_test_shared_router_peer2" {
  name                      = "central-test-router-peer2"
  router                    = google_compute_router.ss_router_central.name
  region                    = "us-central1"
  project                   = var.sharedproject_id
  peer_ip_address           = var.central_test_router_peer2_ip #"169.254.1.22"
  peer_asn                  = 64741
  advertised_route_priority = 100
  interface                 = google_compute_router_interface.central_test_shared_router_interface2.name
  depends_on = [
    google_compute_router_interface.central_test_shared_router_interface2
  ]
}









