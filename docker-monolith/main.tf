provider "docker" {
  host = "tcp://35.187.7.58:2376/"
}

resource "docker_image" "reddit" {
  name = "bulnv/otus-reddit:1.0"
}


resource "docker_container" "reddit" {
  count = 3
  image = "${docker_image.reddit.latest}"
  name = "reddit-${count.index}"
}

resource "google_compute_instance" "docker" {
  project      = "${var.project}"
  name         = "docker-host-hw14"
  machine_type = "n1-standard-1"
  zone         = "${var.zone}"
  tags         = ["docker-host"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-8"
    }
  }

  network_interface {
    network       = "default"
    access_config = {}
  }

  metadata {
    ssh-keys = "appuser:${file(var.public_key_path)}"
  }
}
