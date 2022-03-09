terraform {
 required_version = ">= 1.0"
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.14"
    }
  }
}

resource "libvirt_volume" "os_image_centos8_server" {
  name = "${var.hostname}-os_image_centos8_server"
  pool = var.libvirt_pool
  format = "qcow2"
  size = var.disk_size*1073741824
}

resource "libvirt_volume" "kickstart_image_centos8_server" {
  name = "${var.hostname}-kickstart_centos8_server"
  pool = var.libvirt_pool
  source = abspath("${path.module}/${var.kickstart_image_centos8_server}")
  format = "qcow2"
}

resource "libvirt_domain" "centos8-server" {
  autostart = true
  name = "centos8-server"
  memory = var.memory*1024
  vcpu = var.cpu

  boot_device {
    dev = ["hd", "cdrom", "network"]
  }

  cpu {
    mode = "host-passthrough"
  }

  disk {
     file = abspath("${path.module}/${var.os_image_centos8_server}")
  }

  disk {
     volume_id = libvirt_volume.os_image_centos8_server.id
  }
  
  disk {
     volume_id = libvirt_volume.kickstart_image_centos8_server.id
  }

  network_interface {
       network_name = var.libvirt_network
  }

  console {
    type        = "pty"
    target_port = "0"
    target_type = "serial"
  }

  graphics {
    type = "spice"
    listen_type = "address"
    autoport = "true"
  }
}
