/**********************************
Making BGP Session from NonProd
**********************************/
#NonProd to shared - East

resource "google_compute_router_interface" "east_nonprod_dev_router_interface1" {
  name       = "nonprod-dev-east-router-interface1"
  router     = local.nonprod_router_east_name_dev
  region     = "us-east4"
  ip_range   = var.east_nonprod_dev_router_interface1_iprange #"169.254.0.1/30"
  vpn_tunnel = google_compute_vpn_tunnel.east-nonprod_devtoshared_1.name
  depends_on = [google_compute_vpn_tunnel.east-nonprod_devtoshared_1]
}

resource "google_compute_router_peer" "east_router_peer1" {
  name                      = "nonprod-dev-east-router-peer1"
  router                    = local.nonprod_router_east_name_dev
  region                    = "us-east4"
  peer_ip_address           = var.east_nonprod_dev_router_peer1_ip #"169.254.0.2"
  peer_asn                  = 64530
  advertised_route_priority = 100
  interface                 = google_compute_router_interface.east_nonprod_dev_router_interface1.name
  depends_on = [google_compute_router_interface.east_nonprod_dev_router_interface1]
}


#NonProd to shared - East - For HA

resource "google_compute_router_interface" "east_nonprod_dev_router_interface2" {
  name       = "nonprod-dev-east-router-interface2"
  router     = local.nonprod_router_east_name_dev
  region     = "us-east4"
  ip_range   = var.east_nonprod_dev_router_interface2_iprange #"169.254.0.5/30"
  vpn_tunnel = google_compute_vpn_tunnel.east-nonprod_devtoshared_2.name
  depends_on = [
    google_compute_vpn_tunnel.east-nonprod_devtoshared_2
  ]
}

resource "google_compute_router_peer" "east_nonprod_dev_router_peer2" {
  name                      = "nonprod-dev-east-router-peer2"
  router                    = local.nonprod_router_east_name_dev
  region                    = "us-east4"
  peer_ip_address           = var.east_nonprod_dev_router_peer2_ip #"169.254.0.6"
  peer_asn                  = 64530
  advertised_route_priority = 100
  interface                 = google_compute_router_interface.east_nonprod_dev_router_interface2.name
  depends_on = [
    google_compute_router_interface.east_nonprod_dev_router_interface2
  ]
}





/**********************************
Making BGP Session from Prod
**********************************/
#NonProd to shared - central

resource "google_compute_router_interface" "central_nonprod_dev_router_interface1" {
  name       = "nonprod-dev-central-router-interface1"
  router     = local.nonprod_router_central_name_dev
  region     = "us-central1"
  ip_range   = var.central_nonprod_dev_router_interface1_iprange
  vpn_tunnel = google_compute_vpn_tunnel.central-nonprod_devtoshared_1.name
  depends_on = [
    google_compute_vpn_tunnel.central-nonprod_devtoshared_1
  ]
}

resource "google_compute_router_peer" "central_nonprod_dev_router_peer1" {
  name                      = "nonprod-dev-central-router-peer1"
  router                    = local.nonprod_router_central_name_dev
  region                    = "us-central1"
  peer_ip_address           = var.central_nonprod_dev_router_peer1_ip #"169.254.1.2"
  peer_asn                  = 64531
  advertised_route_priority = 100
  interface                 = google_compute_router_interface.central_nonprod_dev_router_interface1.name
  depends_on = [
    google_compute_router_interface.central_nonprod_dev_router_interface1
  ]
}

#NonProd to shared - central - fOr HA

resource "google_compute_router_interface" "central_nonprod_dev_router_interface2" {
  name       = "nonprod-dev-central-router-interface2"
  router     = local.nonprod_router_central_name_dev
  region     = "us-central1"
  ip_range   = var.central_nonprod_dev_router_interface2_iprange
  vpn_tunnel = google_compute_vpn_tunnel.central-nonprod_devtoshared_2.name
  depends_on = [
    google_compute_vpn_tunnel.central-nonprod_devtoshared_2
  ]
}

resource "google_compute_router_peer" "central_nonprod_dev_router_peer2" {
  name                      = "nonprod-dev-central-router-peer2"
  router                    = local.nonprod_router_central_name_dev
  region                    = "us-central1"
  peer_ip_address           = var.central_nonprod_dev_router_peer2_ip #"169.254.1.6"
  peer_asn                  = 64531
  advertised_route_priority = 100
  interface                 = google_compute_router_interface.central_nonprod_dev_router_interface2.name
  depends_on = [
    google_compute_router_interface.central_nonprod_dev_router_interface2
  ]
}
