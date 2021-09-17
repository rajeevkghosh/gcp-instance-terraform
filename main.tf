provider "google" {
  credentials = file("/home/rajeevgcp14/key2.json")
}

resource "google_compute_instance" "terraform" {
  project      = "secret-proton-312811"
  name         = "terraform"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"  
  
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }  
  
  network_interface {
    network = "default"
    access_config {
    }
  }
}
