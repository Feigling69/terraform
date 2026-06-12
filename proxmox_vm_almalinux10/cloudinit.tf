# das proxmox storage muss snippets für den cloudinit unterstützen
# abfrage in der proxmox console mit "cat /etc/pve/storage.cfg"
# wenn snippets nicht dabei sind, kann man es z.B. hinzufügen mit
# pvesm set local --content backup,iso,vztmpl,import,snippets

resource "proxmox_virtual_environment_file" "cloudinit" {
  content_type = "snippets"
  datastore_id = "local"
  node_name    = var.node_name

  source_raw {
    file_name = "cloud-init.yaml"

    data = templatefile("${path.module}/cloud-init.yaml.tftpl", {
      adminuser               = var.adminuser
      ansible_key             = var.ansible_key
      adminuser_key           = var.adminuser_key
      adminuser_password_hash = var.adminuser_password_hash
      hostname                = var.vmname
    })
  }
}