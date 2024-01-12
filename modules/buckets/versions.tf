terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.11.0"
    }
  }
}

provider "google" {
  project     = "analog-bot-410808"
  region      = "us-central1"
}
