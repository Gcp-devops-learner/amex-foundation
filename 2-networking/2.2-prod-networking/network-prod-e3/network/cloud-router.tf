

/**********************************
Making Cloud Routers
**********************************/

#For Router for_East Region

module "cloud_router1" {
  source  = "terraform-google-modules/cloud-router/google"
  version = "~> 0.4"

  name    = var.e3_east_cloud_router_name
  project = var.prodproject_id
  region  = var.region1
  network = module.vpc.network_name
  bgp = {
    asn = var.e3_router_east_asn
  }
}

module "cloud_router2" {
  source  = "terraform-google-modules/cloud-router/google"
  version = "~> 0.4"

  name    = var.e3_central_cloud_router_name
  project = var.prodproject_id
  region  = var.region2
  network = module.vpc.network_name
  bgp = {
    asn = var.e3_router_east_asn
  }
}
