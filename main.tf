provider "google" {
  #credentials = file("terraform.json")
  project = "	lyrical-shore-262101"
  region  = "us-central1"
  
}

resource "google_compute_instance" "vm-instance" {
  name         = "target-new-vm"
  machine_type = "f1-micro"
  zone         = "us-central1-c"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
 
  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }
}
