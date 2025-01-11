# variables.tf
variable "pm_api_url" {
  description = "Proxmox API URL"
  type        = string
  sensitive   = true
}

variable "pm_api_token_id" {
  description = "Proxmox API Token ID"
  type        = string
  sensitive   = true
}

variable "pm_api_token_secret" {
  description = "Proxmox API Token Secret"
  type        = string
  sensitive   = true
}

variable "cloudinit_password" {
  description = "Cloud-init user password"
  type        = string
  sensitive   = true
}

variable "ssh_public_key" {
  description = "The SSH public key to configure for the VM"
  type        = string
}


# VM Configuration Variables
variable "vm_name" {
  description = "Name of the virtual machine"
  type        = string
  default     = "zoo-vm-jenkins"
}

variable "vm_description" {
  description = "Description of the virtual machine"
  type        = string
  default     = "Ubuntu Oracular to run ecommerce"
}

variable "target_node" {
  description = "Target node in Proxmox cluster"
  type        = string
  default     = "proxmox"
}

variable "template_vm" {
  description = "Template VM to clone from"
  type        = string
  default     = "VM 10000"
}

variable "enable_agent" {
  description = "Enable QEMU agent (1 for yes, 0 for no)"
  type        = number
  default     = 1
}

# Resources and Hardware Variables
variable "os_type" {
  description = "Operating system type"
  type        = string
  default     = "cloud-init"
}

variable "cpu_cores" {
  description = "Number of CPU cores"
  type        = number
  default     = 2
}

variable "cpu_sockets" {
  description = "Number of CPU sockets"
  type        = number
  default     = 2
}

variable "virtual_cpus" {
  description = "Number of virtual CPUs"
  type        = number
  default     = 0
}

variable "cpu_model" {
  description = "CPU model to use"
  type        = string
  default     = "host"
}

variable "memory_size" {
  description = "Memory size in MB"
  type        = number
  default     = 2048
}

variable "scsihw" {
  description = "SCSI hardware type"
  type        = string
  default     = "virtio-scsi-pci"
}

variable "cicustom_file" {
  description = "Path to the custom cloud-init configuration file"
  type        = string
  default     = "vendor=local:snippets/ci-custom-zoo.yml"
}

variable "cloudinit_storage" {
  description = "Storage for cloud-init disk"
  type        = string
  default     = "vm-pool"
}

# Disk Variables
variable "disk_size" {
  description = "Size of the disk in GB"
  type        = number
  default     = 32
}

variable "disk_cache" {
  description = "Disk cache mode"
  type        = string
  default     = "writeback"
}

variable "disk_storage" {
  description = "Storage pool for the disk"
  type        = string
  default     = "vm-pool"
}

variable "disk_replicate" {
  description = "Replicate the disk (true or false)"
  type        = bool
  default     = true
}

# Network Variables
variable "network_model" {
  description = "Network interface model"
  type        = string
  default     = "virtio"
}

variable "network_bridge" {
  description = "Network bridge"
  type        = string
  default     = "vmbr0"
}

# Uncomment this if VLAN tagging is required
# variable "network_vlan_tag" {
#   description = "VLAN tag for network interface"
#   type        = number
#   default     = 256
# }

# Cloud-init Variables
variable "boot_order" {
  description = "Boot order for the VM"
  type        = string
  default     = "order=scsi0"
}

variable "ip_configuration" {
  description = "Static IP configuration for the VM (CIDR format with gateway)"
  type        = string
  default     = "ip=192.168.0.140/24,gw=192.168.0.1"
}


variable "cloudinit_user" {
  description = "Cloud-init user"
  type        = string
  default     = "zoo-vm"
}

# Serial Console Variables
variable "serial_id" {
  description = "Serial device ID"
  type        = number
  default     = 0
}

variable "serial_type" {
  description = "Serial device type"
  type        = string
  default     = "socket"
}