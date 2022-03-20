terraform {
  required_providers {
    junos-ipsec-policy-based = {
      source  = "cdot65/junos-ipsec-policy-based"
      version = "0.0.1"
    }
  }
}

provider "junos-ipsec-policy-based" {
  host     = var.juniper_host_name
  port     = var.juniper_ssh_port
  sshkey   = var.juniper_ssh_key
  username = var.juniper_user_name
  password = var.juniper_user_password
}

module "ipsec-policy-based" {
  source     = "./ipsec"
  providers  = { junos-ipsec-policy-based = junos-ipsec-policy-based }
  depends_on = [junos-ipsec-policy-based_destroycommit.commit-main]
}

resource "junos-ipsec-policy-based_commit" "commit-main" {
  resource_name = "commit"
  depends_on    = [module.ipsec-policy-based]
}

resource "junos-ipsec-policy-based_destroycommit" "commit-main" {
  resource_name = "destroycommit"
}