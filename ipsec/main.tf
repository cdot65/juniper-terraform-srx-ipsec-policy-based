terraform {
  required_providers {
    junos-ipsec = {
      source  = "cdot65/junos-ipsec"
      version = "0.0.2"
    }
  }
}

// Address Book 1
resource "junos-ipsec_SecurityAddress__BookName" "address_book_1_name" {
  resource_name = var.apply_group_name
  name          = var.address_book_1_name
}

resource "junos-ipsec_SecurityAddress__BookAttachZoneName" "address_book_1_zone" {
  resource_name = var.apply_group_name
  name          = var.address_book_1_name
  name__1       = var.address_book_1_zone
}

resource "junos-ipsec_SecurityAddress__BookAddressName" "address_book_1_address" {
  resource_name = var.apply_group_name
  name          = var.address_book_1_name
  name__1       = var.address_book_1_address
}

resource "junos-ipsec_SecurityAddress__BookAddressIp__Prefix" "address_book_1_prefix" {
  resource_name = var.apply_group_name
  name          = var.address_book_1_name
  name__1       = var.address_book_1_address
  ip__prefix    = var.address_book_1_prefix
}


// Address Book 2
resource "junos-ipsec_SecurityAddress__BookName" "address_book_2_name" {
  resource_name = var.apply_group_name
  name          = var.address_book_2_name
}

resource "junos-ipsec_SecurityAddress__BookAttachZoneName" "address_book_2_zone" {
  resource_name = var.apply_group_name
  name          = var.address_book_2_name
  name__1       = var.address_book_2_zone
}

resource "junos-ipsec_SecurityAddress__BookAddressName" "address_book_2_address" {
  resource_name = var.apply_group_name
  name          = var.address_book_2_name
  name__1       = var.address_book_2_address
}

resource "junos-ipsec_SecurityAddress__BookAddressIp__Prefix" "address_book_2_prefix" {
  resource_name = var.apply_group_name
  name          = var.address_book_2_name
  name__1       = var.address_book_2_address
  ip__prefix    = var.address_book_2_prefix
}


// TCP MSS IPsec VPN
resource "junos-ipsec_SecurityFlowTcp__MssIpsec__VpnMss" "ipsec_vpn_mss" {
  resource_name = var.apply_group_name
  mss           = var.ipsec_vpn_mss
}


// IPsec VPN Policy
resource "junos-ipsec_SecurityIpsecPolicyName" "ipsec_vpn_policy_name" {
  resource_name = var.apply_group_name
  name          = var.ipsec_vpn_policy_name
}

resource "junos-ipsec_SecurityIpsecPolicyProposals" "ipsec_vpn_policy_proposal" {
  resource_name = var.apply_group_name
  name          = var.ipsec_vpn_policy_name
  proposals     = var.ipsec_vpn_proposal_name
}


// IPsec VPN Proposal
resource "junos-ipsec_SecurityIpsecProposalName" "ipsec_vpn_proposal_name" {
  resource_name = var.apply_group_name
  name          = var.ipsec_vpn_proposal_name
}

resource "junos-ipsec_SecurityIpsecProposalAuthentication__Algorithm" "ipsec_vpn_proposal_auth_alg" {
  resource_name             = var.apply_group_name
  name                      = var.ipsec_vpn_proposal_name
  authentication__algorithm = var.ipsec_vpn_proposal_auth_alg
}

resource "junos-ipsec_SecurityIpsecProposalDescription" "ipsec_vpn_proposal_description" {
  resource_name = var.apply_group_name
  name          = var.ipsec_vpn_proposal_name
  description   = var.ipsec_vpn_proposal_description
}

resource "junos-ipsec_SecurityIpsecProposalEncryption__Algorithm" "ipsec_vpn_proposal_encrypt_alg" {
  resource_name         = var.apply_group_name
  name                  = var.ipsec_vpn_proposal_name
  encryption__algorithm = var.ipsec_vpn_proposal_encrypt_alg
}

resource "junos-ipsec_SecurityIpsecProposalProtocol" "ipsec_vpn_proposal_protocol" {
  resource_name = var.apply_group_name
  name          = var.ipsec_vpn_proposal_name
  protocol      = var.ipsec_vpn_proposal_protocol
}

// IPsec VPN
resource "junos-ipsec_SecurityIpsecVpnName" "ipsec_vpn_name" {
  resource_name = var.apply_group_name
  name          = var.ipsec_vpn_name
}

resource "junos-ipsec_SecurityIpsecVpnEstablish__Tunnels" "ipsec_vpn_establish__tunnels" {
  resource_name      = var.apply_group_name
  name               = var.ipsec_vpn_name
  establish__tunnels = var.ipsec_vpn_establish__tunnels
}

resource "junos-ipsec_SecurityIpsecVpnIkeGateway" "ike_gateway_name" {
  resource_name = var.apply_group_name
  name          = var.ipsec_vpn_name
  gateway       = var.ike_gateway_name
}

resource "junos-ipsec_SecurityIpsecVpnIkeIpsec__Policy" "ipsec_vpn_policy_name" {
  resource_name = var.apply_group_name
  name          = var.ipsec_vpn_name
  ipsec__policy = var.ipsec_vpn_policy_name
}
