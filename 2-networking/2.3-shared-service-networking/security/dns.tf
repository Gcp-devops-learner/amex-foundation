

module "dns-nonprod-googleapis" {
  source     = "terraform-google-modules/cloud-dns/google"
  version    = "3.0.0"
  project_id = var.project_id
  type       = "private"
  name       = "googleapis"
  domain     = "googleapis.com."

  private_visibility_config_networks = [
    "https://www.googleapis.com/compute/v1/projects/${var.project_id}/global/networks/${local.network_name}"
  ]

  recordsets = [
    {
      name = "restricted"
      type = "A"
      ttl  = 300
      records = [
        "199.36.153.4",
        "199.36.153.5",
        "199.36.153.6",
        "199.36.153.7",
      ]
    },
    {
      name = "*"
      type = "CNAME"
      ttl  = 300
      records = [
        "restricted.googleapis.com.",
      ]
    },
  ]
}
