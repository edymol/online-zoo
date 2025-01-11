resource "proxmox_vm_qemu" "zoo_app_vm" {
  name        = var.vm_name
  desc        = var.vm_description
  target_node = var.target_node
  clone       = var.template_vm
  agent       = var.enable_agent

  os_type  = var.os_type
  cores    = var.cpu_cores
  sockets  = var.cpu_sockets
  vcpus    = var.virtual_cpus
  cpu      = var.cpu_model
  memory   = var.memory_size
  scsihw   = var.scsihw
  cicustom = var.cicustom_file  # This is where the `ci-custom-zoo.yml` file is used

  disks {
    ide {
      ide2 {
        cloudinit {
          storage = var.cloudinit_storage
        }
      }
    }
    scsi {
      scsi0 {
        disk {
          size      = var.disk_size
          cache     = var.disk_cache
          storage   = var.disk_storage
          replicate = var.disk_replicate
        }
      }
    }
  }

  network {
    model  = var.network_model
    bridge = var.network_bridge
  }

  boot       = var.boot_order
  ipconfig0  = var.ip_configuration
  ciuser     = var.cloudinit_user
  cipassword = var.cloudinit_password
  sshkeys    = var.ssh_public_key

  serial {
    id   = var.serial_id
    type = var.serial_type
  }
}
