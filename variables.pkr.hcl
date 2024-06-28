
locals { timestamp = regex_replace(timestamp(), "[- TZ:]", "")}

variable "cluster" {
  type    = string
}

variable "datastore" {
  type    = string
}

variable "network" {
  type    = string
}

variable "vcenter_password" {
  type    = string
}

variable "vcenter_username" {
  type    = string
}

variable "vcenter_server" {
  type    = string
}

variable "vm_name" {
  type    = string
}

variable "ssh_username" {
  type    = string
}

variable "ssh_password" {
  type    = string
}

variable "cpu" {
  type    = string
}

variable "memory" {
  type    = string
}

variable "boot_wait" {
  type    = string
}

variable "disk_controller_type" {
  type    = list(string)
}

variable "vm_folder" {
  type    = string
}
variable "guest_os_type" {
  type    = string
}

variable "iso_urls" {
  type    = list(string)
}

variable "iso_paths" {
  type    = string
}

variable "vm_disk_size" {
  type    = string
}

variable "iso_checksum" {
  type    = string
}
