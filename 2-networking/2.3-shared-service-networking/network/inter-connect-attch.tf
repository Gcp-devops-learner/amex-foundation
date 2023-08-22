
resource "google_compute_interconnect_attachment" "on_prem1" {
  name                     = "on-prem-attachment"
  edge_availability_domain = "AVAILABILITY_DOMAIN_1"
  type                     = "PARTNER"
  region                   = var.region1
  project                  = var.sharedproject_id
  router                   = google_compute_router.interconnect1.id
  mtu                      = 1500
}

resource "google_compute_interconnect_attachment" "on_prem2" {
  name                     = "on-prem-attachment"
  edge_availability_domain = "AVAILABILITY_DOMAIN_2"
  type                     = "PARTNER"
  region                   = var.region2
  project                  = var.sharedproject_id
  router                   = google_compute_router.interconnect2.id
  mtu                      = 1500
}

resource "google_compute_router" "interconnect1" {
  name    = var.ss_east_cloud_inter_connect_router_name
  region  = var.region1
  project = var.sharedproject_id
  network = module.vpc.network_name
  bgp {
    asn = 16550
  }
}

resource "google_compute_router" "interconnect2" {
  name    = var.ss_central_cloud_inter_connect_router_name
  region  = var.region2
  project = var.sharedproject_id
  network = module.vpc.network_name
  bgp {
    asn = 16550
  }
}

/*
resource "google_compute_network" "foobar" {
  name                    = "network"
  auto_create_subnetworks = false
}
*/