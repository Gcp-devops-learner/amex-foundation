locals {
    network_name = data.terraform_remote_state.e1_network.outputs.nonprod-e1-vpc
}

module "subnet" {
    source  = "terraform-google-modules/network/google//modules/subnets"

    project_id   = var.npproject_id
    network_name = local.network_name
    subnets = [

      for s in var.subnets:{
      subnet_name           = s.subnet_name
      subnet_ip             = s.subnet_ip
      subnet_region         = s.subnet_region
      subnet_private_access = "true"
      subnet_flow_logs      = "false"
      }
    ]
}
