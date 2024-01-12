resource "google_compute_instance" "moninstance1" {
  name = var.instance-name
  machine_type = var.instance-size
  zone = var.instance-zone
  tags = [var.instance-tag]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
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
