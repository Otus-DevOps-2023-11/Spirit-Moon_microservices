variable k8s-node_disk_image {
  description = "Disk image for reddit k8s_node"
  default = "fd8idq8k33m9hlj0huli"
}
variable "public_key_path" {
  # Описание переменной
  description = "Path to the public key used for ssh access"
}
variable "subnet_id" {
  description = "Subnet"
}
variable "credentials" {
  description = "File to create users"
  default = "credentials"
}
