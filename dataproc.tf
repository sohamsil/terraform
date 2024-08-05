resource "google_dataproc_cluster" "spark-cluster" {
  project = var.project_id
  name    = "${var.prefix}-dataproc"
  region  = var.region

  cluster_config {
    staging_bucket = google_storage_bucket.dataproc-bucket.name

    master_config {
      num_instances = 1
      machine_type  = var.dp_master_machine_type
      disk_config {
        boot_disk_type    = var.dp_master_bootdisk_type
        boot_disk_size_gb = var.dp_master_bootdisk_size
      }
    }

    worker_config {
      num_instances = var.dp_workers_count
      machine_type  = var.dp_worker_machine_type
      disk_config {
        boot_disk_type    = var.dp_worker_bootdisk_type
        boot_disk_size_gb = var.dp_worker_bootdisk_size
      }
    }

    software_config {
      image_version = var.software_config
    }

    gce_cluster_config {
      # zone                   = "${var.region}-a"
      # subnetwork             = var.subnetwork_name
      service_account        = var.service_account
      service_account_scopes = ["cloud-platform"]
    }
  }

}