output "external_ip_address_k8s-master" {
value = yandex_compute_instance.k8s-master.network_interface.0.nat_ip_address
}
