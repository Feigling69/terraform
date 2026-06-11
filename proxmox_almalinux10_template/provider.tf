terraform {
  required_version = ">=1.14.0"
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = ">=0.50"
    }
  }
}

variable "endpoint" {
  type = string
}

variable "api_token" {
  type = string
  sensitive = true
}

variable "password" {
  type = string
  sensitive = true
}

variable "ssh-private-key" {
  description = "location of the private key to use with proxmox"
  type = string
}


provider "proxmox" {
  endpoint  = var.endpoint
  api_token = var.api_token
  insecure  = true
  ssh {
    agent     = true
    username  = "root"
    private_key = file(var.ssh-private-key)
  }
}