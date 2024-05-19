provider "yandex" {
 # token     = var.token
  service_account_key_file = "${file("${var.service_account_key_file}")}"
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone      = var.zone
}
module "k8s-master" {
  source          = "./modules/k8s-master"
  public_key_path = var.public_key_path
  k8s-master_disk_image  = var.k8s-master_disk_image
  subnet_id       = var.subnet_id
}

module "k8s-node" {
  source          = "./modules/k8s-node"
  public_key_path = var.public_key_path
  k8s-node_disk_image   = var.k8s-node_disk_image
  subnet_id       = var.subnet_id
}
