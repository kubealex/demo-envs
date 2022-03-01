module "libvirt_resources" {
  source = "./modules/00_libvirt_resources"

# Variables
  domain = var.domain
  network_cidr = var.network_cidr
  libvirt_pool_path = var.libvirt_pool_path
  libvirt_network = var.libvirt_network
  libvirt_pool = var.libvirt_pool
}

module "kvm_instance" { 
  source = "./modules/01_kvm_instance"

# Variables

  hostname = var.hostname
  domain = var.domain
  memory = var.memory
  cpu = var.cpu
  libvirt_network = var.libvirt_network
  libvirt_pool = var.libvirt_pool
  disk_size = var.disk_size
  os_image = var.os_image
  authorized_key_path = var.authorized_key_path
}
