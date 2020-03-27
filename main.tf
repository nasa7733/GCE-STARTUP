provider "google" {
  #credentials = file("terraform.json")
  project = "lyrical-shore-262101"
  region  = "us-east1"
  
}

resource "google_compute_instance" "vm-instance" {
  name         = "target-new-vm"
  machine_type = "f1-micro"
  zone         = "us-east1-b"

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
