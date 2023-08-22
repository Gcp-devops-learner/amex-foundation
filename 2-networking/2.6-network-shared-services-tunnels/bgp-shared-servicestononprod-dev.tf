
/**********************************
Making BGP Session from Shared to Non Prod -DEV
*********************************/
#shared to NonProd-dev- East

resource "google_compute_router_interface" "east_shared_dev_router_interface1" {
  name       = "${terraform.workspace}-dev-east-router-interface1"
  router     = local.shared_router_east_name
  region     = "us-east4"
  ip_range   = var.east_dev_router_interface1_iprange #"169.254.0.2/30"
  vpn_tunnel = google_compute_vpn_tunnel.east_sharedtononprod_dev_1.name
  depends_on = [
    google_compute_vpn_tunnel.east_sharedtoprod_1
  ]
}

resource "google_compute_router_peer" "east_shared-dev-router_peer1" {
  name                      = "east-router-peer1"
  router                    = local.shared_router_east_name
  region                    = "us-east4"
  peer_ip_address           = var.east_dev_router_peer1_ip #"169.254.0.1"
  peer_asn                  = 64520
  advertised_route_priority = 100
  interface                 = google_compute_router_interface.east_shared_dev_router_interface1.name
  depends_on = [
    google_compute_router_interface.east_shared_dev_router_interface1
  ]
}

#shared to Prod- East - For HA

resource "google_compute_router_interface" "east_shared_dev_router_interface2" {
  name       = "${terraform.workspace}-dev-east-router-interface2"
  router     = local.shared_router_east_name
  region     = "us-east4"
  ip_range   = var.east_dev_router_interface2_iprange #"169.254.0.6/30"
  vpn_tunnel = google_compute_vpn_tunnel.east_sharedtononprod_dev_2.name
  depends_on = [
    google_compute_vpn_tunnel.east_sharedtononprod_dev_2
  ]
}

resource "google_compute_router_peer" "east_shared_dev_router_peer2" {
  name                      = "east-dev-router-peer2"
  router                    = local.shared_router_east_name
  region                    = "us-east4"
  peer_ip_address           = var.east_dev_router_peer2_ip #"169.254.0.5"
  peer_asn                  = 64520
  advertised_route_priority = 100
  interface                 = google_compute_router_interface.east_shared_dev_router_interface2.name
  depends_on = [
    google_compute_router_interface.east_shared_dev_router_interface2
  ]
}



#shared to NOnProd-dev Central

#shared to Prod- Central

resource "google_compute_router_interface" "central_dev_shared_router_interface1" {
  name       = "${terraform.workspace}-dev-central-router-interface1"
  router     = local.shared_router_central_name
  region     = "us-central1"
  ip_range   = var.central_dev_router_interface1_iprange #"169.254.1.2/30"
  vpn_tunnel = google_compute_vpn_tunnel.central_sharedtononprod_dev_1.name
  depends_on = [
      google_compute_vpn_tunnel.central_sharedtononprod_dev_1
  ]
}

resource "google_compute_router_peer" "central_dev_shared_router_peer1" {
  name                      = "central-dev-router-peer1"
  router                    = local.shared_router_central_name
  region                    = "us-central1"
  peer_ip_address           = var.central_dev_router_peer1_ip #"169.254.1.1"
  peer_asn                  = 64521
  advertised_route_priority = 100
  interface                 = google_compute_router_interface.central_dev_shared_router_interface1.name
  depends_on                = [
      google_compute_router_interface.central_dev_shared_router_interface1
  ]
}

#shared to Prod- Central - For HA

resource "google_compute_router_interface" "central_dev_shared_router_interface2" {
  name       = "${terraform.workspace}-dev-central-router-interface2"
  router     = local.shared_router_central_name
  region     = "us-central1"
  ip_range   = var.central_dev_router_interface2_iprange #"169.254.1.6/30"
  vpn_tunnel = google_compute_vpn_tunnel.central_sharedtononprod_2.name
  depends_on = [
      google_compute_vpn_tunnel.central_sharedtononprod_2
  ]
}

resource "google_compute_router_peer" "central_dev_shared_router_peer2" {
  name                      = "central-dev-router-peer2"
  router                    = local.shared_router_central_name
  region                    = "us-central1"
  peer_ip_address           = var.central_dev_router_peer2_ip #"169.254.1.5"
  peer_asn                  = 64521
  advertised_route_priority = 100
  interface                 = google_compute_router_interface.central_dev_shared_router_interface2.name
  depends_on                = [
      google_compute_router_interface.central_dev_shared_router_interface2
  ]
}


