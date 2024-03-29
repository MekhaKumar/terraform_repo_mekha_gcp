provider "google" {
 
  project = "evolve-3-workstream"
   region  = "us-central1"
  zone    = "us-central1-a"
}

resource "google_compute_instance" "default" {
  name         = "mekhavm01"
  machine_type = "f1-micro"


  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
 network_interface {
    # A default network is created for all GCP projects
    network = "default"
    access_config {
    }
  }
}
