variable "domain" { 
  type = string
  default = "rhdemo.labs" 
}

variable "network_cidr" {
  type = list
  default = ["192.168.215.0/24"]
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

variable "libvirt_pool_path" { 
  type = string
  default = "/var/lib/libvirt/images" 
}
