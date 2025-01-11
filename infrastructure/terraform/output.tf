output "vm_id" {
  value = proxmox_vm_qemu.cloudinit-test.id
}

output "vm_ip" {
  value = proxmox_vm_qemu.cloudinit-test.network[0].ip
}
