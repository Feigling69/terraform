resource "proxmox_virtual_environment_vm" "testvm" {
  name      = var.vmname
  node_name = "proxmox"

  clone {
    vm_id = var.vm_id
  }

  cpu {
    cores = var.cores
    type = "host"
    sockets = var.sockets
  }

  memory {
    dedicated = var.memory
  }
  
  
  disk {
    datastore_id = "local-lvm" 
    interface    = "scsi0"
    size         = 20
    discard      = "on"
  }

  network_device {
    model  = "virtio"
    bridge = "vmbr0"
  }

  initialization {
    ip_config {
      ipv4 {
        address = "dhcp"
      }
    }

    user_account {
      username = var.username
      password = var.password
      keys = [ var.sshkeys ]
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