
module "add_service_project" {
  source        = "../../../../../modules/service_project/"
  host_project_id = var.npproject_id
  service_project_ids = var.service_projects
}
