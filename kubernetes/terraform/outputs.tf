output "external_ip_address_k8s-master" {
  value = module.k8s-master.external_ip_address_k8s-master
}
output "external_ip_address_k8s-node" {
  value = module.k8s-node.external_ip_address_k8s-node
}
