# Autoscaller 
resource "google_compute_autoscaler" "autoscaler_app" {
  name   = var.autoscaler-name
  zone   = var.autoscaler-zone
  target = google_compute_instance_group_manager.group-instance.id

  autoscaling_policy {
    max_replicas    = 5
    min_replicas    = 1
    cooldown_period = 60

    cpu_utilization {
      target = 0.5
    }
  }
}

# Template de l'instance
resource "google_compute_instance_template" "instance-app" {
  name = var.instance-template-name
  machine_type = var.instance-template-size
  tags = [var.instance-template-tag]

  disk {
    source_image = data.google_compute_image.debian_11.id
    auto_delete       = true
    boot              = true
  }

  metadata = {
    ssh-keys = "florian.tellier02:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGmlBm2CIRAax7AeOGCejk97Grbi/Vb+M8SbbgsHN1lu florian.tellier02@gmail.com"
  }

  network_interface {
    network = var.vpc-name
    subnetwork = var.subnet-name

    access_config {
      // Cela permet d'attribuer une adresse IP publique à l'interface réseau
    }
  }
}

# Groupe d'instance 
resource "google_compute_instance_group_manager" "group-instance" {
  name = var.group-instance-name
  zone = var.group-instance-zone

  version {
    instance_template  = google_compute_instance_template.instance-app.id
    name               = "primary"
  }

  target_pools       = [google_compute_target_pool.target_pool.id]
  base_instance_name = "app"

   named_port {
    name = "db-port"
    port = 5432 
  }
}

resource "google_compute_target_pool" "target_pool" {
  name = var.target-pool-name
}

data "google_compute_image" "debian_11" {
  family  = "debian-11"
  project = "debian-cloud"
}
