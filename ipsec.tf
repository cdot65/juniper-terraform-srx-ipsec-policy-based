terraform {
  required_providers {
    junos-ipsec = {
      source  = "cdot65/junos-ipsec"
      version = "0.0.2"
    }
  }
}

provider "junos-ipsec" {
  host     = var.juniper_host_name
  port     = var.juniper_ssh_port
  sshkey   = var.juniper_ssh_key
  username = var.juniper_user_name
  password = var.juniper_user_password
}

module "ipsec" {
  source     = "./ipsec"
  providers  = { junos-ipsec = junos-ipsec }
  depends_on = [junos-ipsec_destroycommit.commit-main]
}

resource "junos-ipsec_commit" "commit-main" {
  resource_name = "commit"
  depends_on    = [module.ipsec]
}

resource "junos-ipsec_destroycommit" "commit-main" {
  resource_name = "destroycommit"
}