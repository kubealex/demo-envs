terraform {
 required_version = ">= 1.0"
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.14"
      configuration_aliases = [ libvirt ]
    }
  }
}

module "libvirt_resources" {
  source = "./modules/00_libvirt_resources"

# Variables
  domain = var.domain
  network_cidr = var.network_cidr
  libvirt_pool_path = var.libvirt_pool_path
  libvirt_network = var.libvirt_network
  libvirt_pool = var.libvirt_pool
}

module "satellite_instance" { 
  source = "./modules/01_satellite_instance"

# Variables
  domain = var.domain
  memory = var.memory
  cpu = var.cpu
  libvirt_network = var.libvirt_network
  libvirt_pool = var.libvirt_pool
  disk_size = var.disk_size
  #os_image = var.os_image
  authorized_key_path = var.authorized_key_path
}

module "client_instances" { 
  source = "./modules/02_client_instance"

# Variables
  domain = var.domain
  memory = var.memory
  cpu = var.cpu
  libvirt_network = var.libvirt_network
  libvirt_pool = var.libvirt_pool
  disk_size = var.disk_size
  #os_image = var.os_image
  authorized_key_path = var.authorized_key_path
}


