terraform {
  required_providers {
    proxmox = {
      source = "telmate/proxmox"
    }
  }
}

provider "proxmox" {
  pm_api_url = "https://${var.pm_ip}:${var.pm_port}/api2/json"
  pm_user = "${var.pm_user}"
  pm_api_token_id = "${var.pm_api_token_id}"
  pm_api_token_secret = "${var.pm_api_token_secret}"
  pm_tls_insecure = true
}