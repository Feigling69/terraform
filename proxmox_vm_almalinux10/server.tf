resource "proxmox_virtual_environment_vm" "new" {
  name      = var.vmname
  node_name = var.node_name

  clone {
    vm_id = var.template_id
  }

  cpu {
    cores = var.cores
    type = "host"
    sockets = var.sockets
  }

  memory {
    dedicated = var.memory
  }
  
  # disk:
  # das interface muss das gleiche device wie im template sein, sonst wird eine zusätzliche hdd erzeugt
  # ausserdem kann die hdd nicht kleiner sein, als im template
  disk {
    datastore_id = "local-lvm" 
    interface    = "virtio0"
    size         = var.disksize
    discard      = "on"
  }

  network_device {
    model  = "virtio"
    bridge = "vmbr0"
  }

  initialization {
    user_data_file_id = proxmox_virtual_environment_file.cloudinit.id

    ip_config {
      ipv4 {
        address = var.ipv4_address # alternativ address = "dhcp"
        gateway = var.ipv4_gateway
      }
    }

    dns {
      servers = var.dns_server
      domain  = var.dns_domain
    }
  }
  
  serial_device {
    device = "socket"  # oder "pty" für lokale Konsolen
  }

  vga {
    type   = "serial0"      # Erzwinge Serial Console als primäre Konsole
    memory = 16             # Optional: VRAM für die Konsole
  } 
}