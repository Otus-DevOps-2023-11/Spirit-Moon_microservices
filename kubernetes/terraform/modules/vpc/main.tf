resource "yandex_vpc_network" "k8s-network" {
  name = "k8s-network"
}

resource "yandex_vpc_subnet" "k8s-subnet" {
  name           = "k8s-subnet"
  zone           = "ru-central1-a"
  network_id     = "${yandex_vpc_network.k8s-network.id}"
  v4_cidr_blocks = ["192.168.15.0/24"]
}
