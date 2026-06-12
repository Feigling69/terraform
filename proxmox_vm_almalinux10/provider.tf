terraform {
  required_version = ">=1.14.0"
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = ">=0.50"
    }
  }
}

provider "proxmox" {
  endpoint  = var.endpoint
  api_token = var.api_token
  insecure  = true

  # für den cloudinit ist ssh-zugang mit root und geladenem ssh-key nötig
  ssh {
    username    = "root"
    agent = true
  }
}