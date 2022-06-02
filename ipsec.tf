terraform {
  required_providers {
    junos-ipsec-policy-based = {
      source  = "cdot65/junos-ipsec-policy-based"
      version = "0.0.3"
    }
  }
}

provider "junos-ipsec-policy-based" {
  host     = "192.168.105.10"
  port     = var.juniper_ssh_port
  sshkey   = var.juniper_ssh_key
  username = var.juniper_user_name
  password = var.juniper_user_password
}

module "ipsec-policy-based" {
  // name of our configuration apply group
  apply_group_name = "cdot65_ipsec"

  // IKE gateway
  ike_gateway_name      = "cdot65_ike_gateway"
  ike_gateway_address   = "56.0.0.1"
  ike_gateway_ext_iface = "ge-0/0/0.0"

  // IKE proposal
  ike_proposal_name        = "cdot65_ike_proposal"
  ike_proposal_auth_alg    = "sha-256"
  ike_proposal_auth_method = "pre-shared-keys"
  ike_proposal_description = "DH14-aes-128-sha-256"
  ike_proposal_dhgroup     = "group14"
  ike_proposal_enc_alg     = "aes-128-cbc"
  ike_proposal_lifetime    = "1000"

  // IKE policy
  ike_policy_name        = "cdot65_ike_policy"
  ike_policy_description = "This is an IKE policy description"
  ike_policy_mode        = "main"
  ike_policy_preshared   = "juniper123"

  // Address Book 1
  address_book_1_name    = "cdot65_book1"
  address_book_1_zone    = "LAN"
  address_book_1_address = "cdot65_address1"
  address_book_1_prefix  = "192.168.1.0/24"

  // Address Book 2
  address_book_2_name    = "cdot65_book2"
  address_book_2_zone    = "WAN"
  address_book_2_address = "cdot65_address2"
  address_book_2_prefix  = "192.168.2.0/24"

  // TCP MSS for VPN traffic
  ipsec_vpn_mss = "1350"

  // IPsec VPN policy
  ipsec_vpn_policy_name = "cdot65_ipsec_policy"

  // IPsec VPN proposal
  ipsec_vpn_proposal_name        = "cdot65_ipsec_proposal"
  ipsec_vpn_proposal_auth_alg    = "hmac-sha-256-128"
  ipsec_vpn_proposal_description = "This is a description."
  ipsec_vpn_proposal_encrypt_alg = "aes-256-cbc"
  ipsec_vpn_proposal_protocol    = "esp"

  // IPsec VPN tunnel
  ipsec_vpn_name               = "cdot65_ipsec_vpn"
  ipsec_vpn_establish__tunnels = "immediately"

  // Security policy 1
  sec_pol_1_name              = "VPN"
  sec_pol_1_from_zone         = "LAN"
  sec_pol_1_to_zone           = "WAN"
  sec_pol_1_match_dst_address = "cdot65_address2"
  sec_pol_1_match_src_address = "cdot65_address1"
  sec_pol_1_application       = "any"

  // Security policy 2
  sec_pol_2_name              = "VPN"
  sec_pol_2_from_zone         = "WAN"
  sec_pol_2_to_zone           = "LAN"
  sec_pol_2_match_dst_address = "cdot65_address1"
  sec_pol_2_match_src_address = "cdot65_address2"
  sec_pol_2_application       = "any"

  // passing information into our provider
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
