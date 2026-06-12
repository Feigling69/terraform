# Terraform-Scripte

## proxmox_almalinux10_template 
erzeugt ein template in Proxmox um später auf dieser Basis VMs zu clonen

## proxmox_vm_almalinux10 
erzeugt eine neue almalinux 10 VM 
- benutzt das almalinux template (proxmox_almalinux10_template)
- verwendet cloudinit um mehrere user anzulegen (adminuser und ansible user)
- installiert python3
- setzt statische IP und dns
- adminuser bekommt ein passwort (für die console)

