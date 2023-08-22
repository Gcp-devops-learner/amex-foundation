
/**********************************
Making Cloud Routers
**********************************/

module "ss_cloud_router1" {
  source  = "terraform-google-modules/cloud-router/google"
  version = "~> 0.4"

  name    = var.ss_east_cloud_router_name
  project = var.sharedproject_id
  region  = var.region1
  network = module.vpc.network_name
  bgp = {
    asn = var.ss_router_east_asn
  }
}

module "ss_cloud_router2" {
  source  = "terraform-google-modules/cloud-router/google"
  version = "~> 0.4"

  name    = var.ss_central_cloud_router_name
  project = var.sharedproject_id
  region  = var.region2
  network = module.vpc.network_name
  bgp = {
    asn = var.ss_router_central_asn
  }
}
