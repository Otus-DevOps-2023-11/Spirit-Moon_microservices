resource "yandex_compute_instance" "k8s-master" {
  name = "k8s-master"
  allow_stopping_for_update = true

  labels = {
    tags = "k8s-master"
  }
  platform_id = "standard-v3"
  resources {
    cores  = 4
    core_fraction = 50
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id = var.k8s-master_disk_image
      type="network-ssd"
      size=12
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
