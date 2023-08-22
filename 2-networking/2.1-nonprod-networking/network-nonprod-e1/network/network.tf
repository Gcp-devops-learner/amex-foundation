# Copyright 2021 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose. Your use of it is subject to your agreement with Google.

locals {
  #npproject_id = data.terraform_remote_state.project.output.test-shared-vpc-project-l.project_id
  }

module "vpc" {
  source          = "terraform-google-modules/network/google//modules/vpc"
  project_id      = var.npproject_id
  #project_id = local.npproject_id
  network_name    = var.vpc_name
  auto_create_subnetworks   = var.auto_create_subnetworks
  routing_mode                    = var.routing_mode
  description                     = var.description
  delete_default_internet_gateway_routes = var.delete_default_internet_gw
  mtu                             = var.mtu
  shared_vpc_host = var.shared_vpc_host

}
