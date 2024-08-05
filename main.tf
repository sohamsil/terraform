resource "google_compute_network" "default" {
  name                    = var.vpc_name
  auto_create_subnetworks = false
  project                 = var.project_id

}

resource "google_compute_subnetwork" "default" {
  name                     = var.subnetwork_name
  ip_cidr_range            = var.subnet_cidr
  region                   = var.region
  project                  = var.project_id
  network                  = google_compute_network.default.name
  private_ip_google_access = true
}

# resource "google_compute_firewall" "firewall-rules" {
#   name    = "vpc-allow-internal"
#   network = google_compute_network.default.name
#   project = var.project_id

#   allow {
#     protocol = "tcp"
#     ports    = ["0-65535"]
#   }

#   allow {
#     protocol = "udp"
#     ports    = ["0-65535"]
#   }

#   allow {
#     protocol = "icmp"
#   }

#   priority      = 65535
#   source_ranges = ["10.128.0.0/9"]
# }