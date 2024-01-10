
# VPC
resource "google_compute_network" "vpc_network" {
  name = "vpc-${var.vpc-name}"
  auto_create_subnetworks = false
}

# Subnet
resource "google_compute_subnetwork" "subnet_network" {
  name          = "subnetwork-${var.vpc-name}"
  ip_cidr_range = "10.0.${var.vpc-ip-plage}.0/24"
  region        = "us-central1"
  network       = google_compute_network.vpc_network.id
}

# Firewalls
resource "google_compute_firewall" "rule-deny-all" {
  name        = "${var.vpc-name}-deny-all"
  network       = google_compute_network.vpc_network.name
  description = ""
  priority    = 2000

  deny {
    protocol = "all" 
  }

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "rule-allow-all-ssh-to-bastion" {
  name        = "vpc-allow-all-ssh-to-bastion"
  network     = google_compute_network.vpc_network.name
  description = ""
  priority    = 1001

  allow {
    protocol  = "tcp"
    ports     = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags = ["bastion"]
}