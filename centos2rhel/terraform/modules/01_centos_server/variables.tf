variable hostname {
  type        = string
  description = "Hostname of the VM"
  default     = "centos-server"
}

variable domain {
  type        = string
  description = "Domain for the virtual machine fqdn"
  default     = "rhdemo.labs"
}
 
variable memory {
  type        = number
  description = "Amount of memory in GBs for the VM"
  default     = 16
}

variable cpu {
  type        = number
  description = "Amount of CPUs for the VM"
  default     = 4
}

variable kickstart_image_centos8_server {
  type        = string
  description = "Path for the kickstart image for RHEL8"
  default     = "centos8-oemdrv.img"
}

variable libvirt_network {
  type        = string
  description = "Name of libvirt network to be used for the VM"
  default     = "centos-lab"
}

variable libvirt_pool {
  type        = string
  description = "Name of libvirt pool to be used for the VM"
  default     = "centos-lab"
}

variable disk_size {
  type        = number
  description = "Size in GBs of root volume for the VM"
  default     = 40
}

variable os_image_centos8_server {
  type        = string
  description = "URL/path of the image to be used for the VM provisioning"
  default     = "centos8.iso"
}
