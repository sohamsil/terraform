resource "google_storage_bucket" "dataproc-bucket" {
  project                     = var.project_id
  name                        = "${var.project_id}-dataproc"
  uniform_bucket_level_access = true
  location                    = var.region

  versioning {
    enabled = true
  }
}

resource "google_storage_bucket_iam_member" "dataproc-bucket" {
  bucket = google_storage_bucket.dataproc-bucket.name
  role   = "roles/storage.admin"
  member = "serviceAccount:terraform-sa@spark-431403.iam.gserviceaccount.com"
}