resource "yandex_compute_instance" "k8s-node" {
  name = "k8s-node"
  allow_stopping_for_update = true

  labels = {
    tags = "k8s-node"
  }
  platform_id = "standard-v3"
  resources {
    cores  = 2
    core_fraction = 50
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = var.k8s-node_disk_image
      type="network-ssd"
      size=10
    }
  }

  network_interface {
    subnet_id = var.subnet_id
    nat = true
  }

  # metadata = {
  # ssh-keys = "sysop:${file(var.public_key_path)}"
  # }

  metadata = {
  serial-port-enable = "1"
  user-data = "${file(var.credentials)}"
  }

}
