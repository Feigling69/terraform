variable "vmname" {
  description = "Name of the new VM"
  type = string
}

variable "vm_id" {
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

variable "username" {
    description = "username"
    type = string
}

variable "password" {
    description = "passwort for the user"
    type = string
}

variable "sshkeys" {
    description = "ssh-public-key for the user"
    type = string
}