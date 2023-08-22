

/**********************************
Making Cloud Routers
**********************************/
/*
module "east_cloud_router" {
  source  = "terraform-google-modules/cloud-router/google"
  version = "~> 0.4"
  name    = var.e0_east_cloud_router_name
  project = var.npproject_id
  region  = var.region1
  network = module.vpc.network_name
  bgp = {
    asn = var.e0_router_east_asn
  }
}


module "central_cloud_router" {
  source  = "terraform-google-modules/cloud-router/google"
  version = "~> 0.4"
  
  name    = var.e0_central_cloud_router_name
  project = var.npproject_id
  region  = var.region2
  network = module.vpc.network_name
  bgp = {
    asn = var.e0_router_central_asn
  }
}
*/