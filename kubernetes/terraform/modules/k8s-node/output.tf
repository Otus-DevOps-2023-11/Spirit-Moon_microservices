output "external_ip_address_k8s-node" {
value = yandex_compute_instance.k8s-node.network_interface.0.nat_ip_address
}
