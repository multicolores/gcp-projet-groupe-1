terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.11.0"
    }
  }
}

provider "google" {
  project     = var.project-id
  region      = "us-central1"
}
