
resource "google_compute_subnetwork_iam_binding" "subnet_binding" {
  subnetwork = module.subnet.subnets.subnet_name
  project = var.npproject_id
  role = "roles/compute.networkUser"
  members = var.member_list
  depends_on = [
    module.subnet.subnets.subnet_name
    ]
}
