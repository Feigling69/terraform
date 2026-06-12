# der SHA-512 für adminuser_password_hash kann unter linux mit "openssl passwd -6" erzeugt werden
vmname = "servername"
node_name = "proxmox"
endpoint = "https://192.168.0.10:8006/"
api_token = "root@pam!terraform=token"
template_id = 5003
cores = 2
sockets = 1
memory = 4096
disksize = 40
ipv4_address = "192.168.0.15/24"
ipv4_gateway = "192.168.0.1"
dns_server = [ "192.168.0.1", "1.1.1.1" ]
dns_domain = "local"
adminuser = "user"
adminuser_password_hash = "$6$Eaw74Kc.OOmLfJ57$BuD49EFclR7PJKFTB9ezHE2nylJMYYjL4nvQ2oO7/3AGcSjhY8pq2khwODHAmJq2ft/HqdnXVI1JtohVTMRvw0"
adminuser_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMnOh2lLKgm2N/LzkAIINL7lmFEsYv1FQMfbaBXkxfRE user@localhost"
ansible_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFlHrpZiOsyufWDhFHl/wtWKaEDwep4qzJ/h4nNj4HaM root@ansible"