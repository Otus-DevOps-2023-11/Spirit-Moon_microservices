variable "cloud_id" {
  description = "Cloud"
}
variable "folder_id" {
  description = "Folder"
}
variable "zone" {
  description = "Zone"
  # Значение по умолчанию
  default = "ru-central1-a"
}
variable "public_key_path" {
  # Описание переменной
  description = "Path to the public key used for ssh access"
}
variable "private_key_path" {
  # Описание переменной
  description = "Path to the private key used for ssh access"
}
variable "image_id" {
  description = "Disk image"
}
variable "subnet_id" {
  description = "Subnet"
}
variable "service_account_key_file" {
  description = "key .json"
}
# variable "token" {
#   description = "OAUTH token"
# }
variable k8s-master_disk_image {
  description = "Disk image for k8s_master"
  default = "fd8idq8k33m9hlj0huli"
}
variable k8s-node_disk_image {
  description = "Disk image for k8s_node"
  default = "fd8idq8k33m9hlj0huli"
}

variable "credentials" {
  description = "File to create users"
  default = "credentials"
}
