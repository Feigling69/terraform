variable "endpoint" {
  type = string
}

variable "api_token" {
  type = string
  sensitive = true
}

variable "vmname" {
  description = "Name of the new VM"
  type = string
}

variable "node_name" {
  description = "proxmox nodename"
  type = string
}

variable "template_id" {
  description = "id of the template to clone"
  type = number
}

variable "cores" {
  description = "number of cpu cores"
  type = number
}

variable "sockets" {
  description = "number of cpu sockets"
  type = number
}

variable "memory" {
  description = "memory allocation"
  type = number
}

variable "disksize" {
  description = "disksize in GB"
  type = number
}

variable "ipv4_address" {
  description = "ipv4 adresse mit netzmaske"
  type = string
  validation {
    condition     = can(cidrhost(var.ipv4_address, 0))
    error_message = "ipv4_address muss im CIDR-Format angegeben werden, z.B. 192.168.0.15/24"
  }
}

variable "ipv4_gateway" {
  description = "ipv4 gateway"
  type = string
}

variable "dns_server" {
  description = "dnsserver"
  type = list(string)
}

variable "dns_domain" {
  description = "dns search domain"
  type = string
}

variable "adminuser" {
    description = "username"
    type = string
}

variable "adminuser_password_hash" {
    description = "passwort-hash SHA-512 for the user"
    type = string
    sensitive = true
}

variable "adminuser_key" {
    description = "ssh-public-key for the adminuser"
    type = string
}

variable "ansible_key" {
    description = "ssh-public-key for the user ansible"
    type = string
}