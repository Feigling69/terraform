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


provider "proxmox" {
  endpoint  = var.endpoint
  api_token = var.api_token
  insecure  = true
}