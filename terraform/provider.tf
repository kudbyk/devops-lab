terraform {
  required_providers {
    proxmox = {
      source = "telmate/proxmox"
    }
  }
}

provider "proxmox" {
  pm_api_url = "${var.PROXMOX_HOST}/api2/json"
  pm_user = "${var.PROXMOX_PVE_USER}"
  pm_api_token_id = "${var.PROXMOX_API_TOKEN_ID}"
  pm_api_token = "${var.PROXMOX_API_TOKEN_SECRET}"
  pm_tls_insecure = true
}