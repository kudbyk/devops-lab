resource "proxmox_lxc" "basic" {
  target_node  = "proxmox"
  hostname     = "runner"
  description  = "Self-hosted runner"
  ostemplate   = "${var.ubuntu_lxc_template}"
  unprivileged = true

  ssh_public_keys = <<-EOT
    ${var.ssh_pub_key}
  EOT

  memory = "8192"
  swap   = "0"

  rootfs {
    storage = "${var.pm_storage}"
    size    = "32G"
  }

  network {
    name   = "eth0"
    bridge = "vmbr0"
    ip     = "${var.runner_ip}/24"
  }

  onboot = true
  start  = true
}