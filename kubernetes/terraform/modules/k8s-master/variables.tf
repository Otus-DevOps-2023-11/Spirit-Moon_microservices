variable public_key_path {
  description = "Path to the public key used for ssh access"
}
variable k8s-master_disk_image {
  description = "Disk image for reddit app"
  default = "fd8idq8k33m9hlj0huli"
}
variable subnet_id {
description = "Subnets for modules"
}

variable "credentials" {
  description = "File to create users"
  default = "credentials"
}
