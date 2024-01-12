terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.11.0"
    }
  }
}

provider "google" {
  project     = "projet-vendredi"
  region      = "us-central1"
}