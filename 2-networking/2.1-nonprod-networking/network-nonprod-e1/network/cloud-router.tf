
/**********************************
Making Cloud Routers
**********************************/
/*

module "cloud_router1" {
  source  = "terraform-google-modules/cloud-router/google"
  version = "~> 0.4"

  name    = var.e1_east_cloud_router_name
  project = var.npproject_id
  region  = var.region1
  network = module.vpc.network_name
  bgp = {
    asn = var.e1_router_east_asn
  }
}

module "cloud_router2" {
  source  = "terraform-google-modules/cloud-router/google"
  version = "~> 0.4"

  name    = var.e1_central_cloud_router_name
  project = var.npproject_id
  region  = var.region2
  network = module.vpc.network_name
  bgp = {
    asn = var.e1_router_east_asn
  }
}

*/