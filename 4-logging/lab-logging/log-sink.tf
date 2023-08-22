

locals {
    target_folder_id = data.terraform_remote_state.project.outputs.folders_map1.fldr-eng.folder_id    
}



#Sink for lab logs 
resource "google_logging_folder_sink" "admin-sink" {
  provider         = google.create_dataset
  name             = "sink-${var.env}-${var.car_id}-${var.sink_purpose}"
  description      = "Log sink for lab logs"
  destination      = "storage.googleapis.com/${google_storage_bucket.lab-bucket.name}"
  folder           = local.target_folder_id
  include_children = true
}
