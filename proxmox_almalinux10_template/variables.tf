variable "virtual_environment_node_name" {
  description = "Name des Proxmox-Nodes, auf dem die VMs erstellt werden"
  type        = string
  default     = "proxmox"  # optional
}

variable "datastore_id" {
  description = "Datastore, in dem die VM-Disk gespeichert wird (z.B. local-lvm)"
  type        = string
  default     = "local-lvm"   # Optional, Standardwert
}

variable "template_name" {
  description = "template name shown in proxmox"
  type = string
}

variable "template_id" {
  description = "destination id in proxmox fpr the template - must be free"
  type = number
}

variable "download_url" {
  description = "download url of the cloud image"
  type = string
}

variable "download_filename" {
  description = "filename extention must be .img - this is used to rename it"
  type = string
}

variable "default_username" {
  description = "default user to create"
  type = string
}

variable "default_passwort" {
  description = "password for the defaultuser"
  type = string
}