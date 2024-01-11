# Autoscaller 
resource "google_compute_autoscaler" "autoscaler_app" {
  name   = "autoscaler-app"
  zone   = "us-central1-a"
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
  name = "app"
  machine_type = var.instance-size
  tags = ["app"]

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
  name = "group-instance"
  zone = "us-central1-a"

  version {
    instance_template  = google_compute_instance_template.instance-app.id
    name               = "primary"
  }

  target_pools       = [google_compute_target_pool.target_pool.id]
  base_instance_name = "app"
}

resource "google_compute_target_pool" "target_pool" {
  name = "my-target-pool"
}

data "google_compute_image" "debian_11" {
  family  = "debian-11"
  project = "debian-cloud"
}
