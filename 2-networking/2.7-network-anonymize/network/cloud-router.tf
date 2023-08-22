
/**********************************
Making Cloud Routers
**********************************/


module "cloud_router1" {
  source  = "terraform-google-modules/cloud-router/google"
  version = "~> 0.4"

  name    = var.anon_east_cloud_router_name
  project = var.anon_project_id
  region  = var.region1
  network = module.vpc.network_name
  bgp = {
    asn = var.anon_router_east_asn
  }
}

module "cloud_router2" {
  source  = "terraform-google-modules/cloud-router/google"
  version = "~> 0.4"

  name    = var.anon_central_cloud_router_name
  project = var.anon_project_id
  region  = var.region2
  network = module.vpc.network_name
  bgp = {
    asn = var.anon_router_east_asn
  }
}
