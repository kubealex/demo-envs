variable hostname {
  type        = string
  description = "Hostname of the VM"
  default     = "satellite-vm"
}

variable domain {
  type        = string
  description = "Domain for the virtual machine fqdn"
  default     = "example.com"
}
 
variable memory {
  type        = number
  description = "Amount of memory in GBs for the VM"
  default     = 8
}

variable cpu {
  type        = number
  description = "Amount of CPUs for the VM"
  default     = 2
}

variable libvirt_network {
  type        = string
  description = "Name of libvirt network to be used for the VM"
  default     = "vm-net"
}

variable libvirt_pool {
  type        = string
  description = "Name of libvirt pool to be used for the VM"
  default     = "vm-pool"
}

variable disk_size {
  type        = number
  description = "Size in GBs of root volume for the VM"
  default     = 40
}

variable os_image {
  type        = string
  description = "URL/path of the image to be used for the VM provisioning"
  default     = "rhel7.iso"
}

variable kickstart_image {
  type        = string
  description = "Path for the kickstart image"
  default     = "oemdrv.img"
}

variable authorized_key_path {
  type        = string
  description = "Public key to be added to the VM"
  default     = "~/.ssh/id_rsa.pub"
}