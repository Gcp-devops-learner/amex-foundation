#Creating storage bucket for logging

locals {
    project_id = data.terraform_remote_state.project.outputs.dev-logging-project    
}

resource "google_storage_bucket" "dev-bucket" {
  provider = google.create_dataset
  name     = "bucket-${var.car_id}-${var.env}-${var.bucket_purpose}"
  project  = local.project_id
  location                    = var.sink_bucket_location
  force_destroy               = true
  uniform_bucket_level_access = true
#  encryption {
#    default_kms_key_name = local.kms_key_logging
#  }
  lifecycle_rule {
    action {
      type = "SetStorageClass"
	    storage_class = "COLDLINE"
    }
    condition {
      age = var.bucket_coldline_age
	    with_state = "ANY"
    }
    }
}

resource "google_storage_bucket_iam_member" "data_access_sink_member" {
  provider = google.create_dataset
  bucket   = google_storage_bucket.dev-bucket.name
  role     = "roles/storage.objectCreator"
  member   = google_logging_folder_sink.admin-sink.writer_identity
}






