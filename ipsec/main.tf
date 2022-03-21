terraform {
  required_providers {
    junos-ipsec-policy-based = {
      source  = "cdot65/junos-ipsec-policy-based"
      version = "0.0.3"
    }
  }
}

// IKE gateways
resource "junos-ipsec-policy-based_SecurityIkeGatewayName" "ike_gateway_name" {
  resource_name = var.apply_group_name
  name          = var.ike_gateway_name
}

resource "junos-ipsec-policy-based_SecurityIkeGatewayAddress" "ike_gateway_address" {
  resource_name = var.apply_group_name
  name          = var.ike_gateway_name
  address       = var.ike_gateway_address
}

resource "junos-ipsec-policy-based_SecurityIkeGatewayIke__Policy" "ike_gateway_policy" {
  resource_name = var.apply_group_name
  name          = var.ike_gateway_name
  ike__policy   = var.ike_policy_name
}

resource "junos-ipsec-policy-based_SecurityIkeGatewayExternal__Interface" "ike_gateway_ext_iface" {
  resource_name       = var.apply_group_name
  name                = var.ike_gateway_name
  external__interface = var.ike_gateway_ext_iface
}

// IKE proposals
resource "junos-ipsec-policy-based_SecurityIkeProposalName" "ike_proposal_name" {
  resource_name = var.apply_group_name
  name          = var.ike_proposal_name
}

resource "junos-ipsec-policy-based_SecurityIkeProposalAuthentication__Algorithm" "ike_proposal_auth_alg" {
  resource_name             = var.apply_group_name
  name                      = var.ike_proposal_name
  authentication__algorithm = var.ike_proposal_auth_alg
}

resource "junos-ipsec-policy-based_SecurityIkeProposalAuthentication__Method" "ike_proposal_auth_method" {
  resource_name          = var.apply_group_name
  name                   = var.ike_proposal_name
  authentication__method = var.ike_proposal_auth_method
}

resource "junos-ipsec-policy-based_SecurityIkeProposalDescription" "ike_proposal_description" {
  resource_name = var.apply_group_name
  name          = var.ike_proposal_name
  description   = var.ike_proposal_description
}

resource "junos-ipsec-policy-based_SecurityIkeProposalDh__Group" "ike_proposal_dhgroup" {
  resource_name = var.apply_group_name
  name          = var.ike_proposal_name
  dh__group     = var.ike_proposal_dhgroup
}

resource "junos-ipsec-policy-based_SecurityIkeProposalEncryption__Algorithm" "ike_proposal_enc_alg" {
  resource_name         = var.apply_group_name
  name                  = var.ike_proposal_name
  encryption__algorithm = var.ike_proposal_enc_alg
}

resource "junos-ipsec-policy-based_SecurityIkeProposalLifetime__Seconds" "ike_proposal_lifetime" {
  resource_name     = var.apply_group_name
  name              = var.ike_proposal_name
  lifetime__seconds = var.ike_proposal_lifetime
}

// IKE policies
resource "junos-ipsec-policy-based_SecurityIkePolicyName" "ike_policy_name" {
  resource_name = var.apply_group_name
  name          = var.ike_policy_name
}

resource "junos-ipsec-policy-based_SecurityIkePolicyDescription" "ike_policy_description" {
  resource_name = var.apply_group_name
  name          = var.ike_policy_name
  description   = var.ike_policy_description
}

resource "junos-ipsec-policy-based_SecurityIkePolicyMode" "ike_policy_mode" {
  resource_name = var.apply_group_name
  name          = var.ike_policy_name
  mode          = var.ike_policy_mode
}

resource "junos-ipsec-policy-based_SecurityIkePolicyPre__Shared__KeyAscii__Text" "ike_policy_preshared" {
  resource_name = var.apply_group_name
  name          = var.ike_policy_name
  ascii__text   = var.ike_policy_preshared
  lifecycle {
    ignore_changes = [
      ascii__text,
    ]
  }
}

resource "junos-ipsec-policy-based_SecurityIkePolicyProposals" "ike_policy_proposals" {
  resource_name = var.apply_group_name
  name          = var.ike_policy_name
  proposals     = var.ike_proposal_name
}

// Address Book 1
resource "junos-ipsec-policy-based_SecurityAddress__BookName" "address_book_1_name" {
  resource_name = var.apply_group_name
  name          = var.address_book_1_name
}

resource "junos-ipsec-policy-based_SecurityAddress__BookAttachZoneName" "address_book_1_zone" {
  resource_name = var.apply_group_name
  name          = var.address_book_1_name
  name__1       = var.address_book_1_zone
}

resource "junos-ipsec-policy-based_SecurityAddress__BookAddressName" "address_book_1_address" {
  resource_name = var.apply_group_name
  name          = var.address_book_1_name
  name__1       = var.address_book_1_address
}

resource "junos-ipsec-policy-based_SecurityAddress__BookAddressIp__Prefix" "address_book_1_prefix" {
  resource_name = var.apply_group_name
  name          = var.address_book_1_name
  name__1       = var.address_book_1_address
  ip__prefix    = var.address_book_1_prefix
}


// Address Book 2
resource "junos-ipsec-policy-based_SecurityAddress__BookName" "address_book_2_name" {
  resource_name = var.apply_group_name
  name          = var.address_book_2_name
}

resource "junos-ipsec-policy-based_SecurityAddress__BookAttachZoneName" "address_book_2_zone" {
  resource_name = var.apply_group_name
  name          = var.address_book_2_name
  name__1       = var.address_book_2_zone
}

resource "junos-ipsec-policy-based_SecurityAddress__BookAddressName" "address_book_2_address" {
  resource_name = var.apply_group_name
  name          = var.address_book_2_name
  name__1       = var.address_book_2_address
}

resource "junos-ipsec-policy-based_SecurityAddress__BookAddressIp__Prefix" "address_book_2_prefix" {
  resource_name = var.apply_group_name
  name          = var.address_book_2_name
  name__1       = var.address_book_2_address
  ip__prefix    = var.address_book_2_prefix
}


// TCP MSS IPsec VPN
resource "junos-ipsec-policy-based_SecurityFlowTcp__MssIpsec__VpnMss" "ipsec_vpn_mss" {
  resource_name = var.apply_group_name
  mss           = var.ipsec_vpn_mss
}


// IPsec VPN Policy
resource "junos-ipsec-policy-based_SecurityIpsecPolicyName" "ipsec_vpn_policy_name" {
  resource_name = var.apply_group_name
  name          = var.ipsec_vpn_policy_name
}

resource "junos-ipsec-policy-based_SecurityIpsecPolicyProposals" "ipsec_vpn_policy_proposal" {
  resource_name = var.apply_group_name
  name          = var.ipsec_vpn_policy_name
  proposals     = var.ipsec_vpn_proposal_name
}


// IPsec VPN Proposal
resource "junos-ipsec-policy-based_SecurityIpsecProposalName" "ipsec_vpn_proposal_name" {
  resource_name = var.apply_group_name
  name          = var.ipsec_vpn_proposal_name
}

resource "junos-ipsec-policy-based_SecurityIpsecProposalAuthentication__Algorithm" "ipsec_vpn_proposal_auth_alg" {
  resource_name             = var.apply_group_name
  name                      = var.ipsec_vpn_proposal_name
  authentication__algorithm = var.ipsec_vpn_proposal_auth_alg
}

resource "junos-ipsec-policy-based_SecurityIpsecProposalDescription" "ipsec_vpn_proposal_description" {
  resource_name = var.apply_group_name
  name          = var.ipsec_vpn_proposal_name
  description   = var.ipsec_vpn_proposal_description
}

resource "junos-ipsec-policy-based_SecurityIpsecProposalEncryption__Algorithm" "ipsec_vpn_proposal_encrypt_alg" {
  resource_name         = var.apply_group_name
  name                  = var.ipsec_vpn_proposal_name
  encryption__algorithm = var.ipsec_vpn_proposal_encrypt_alg
}

resource "junos-ipsec-policy-based_SecurityIpsecProposalProtocol" "ipsec_vpn_proposal_protocol" {
  resource_name = var.apply_group_name
  name          = var.ipsec_vpn_proposal_name
  protocol      = var.ipsec_vpn_proposal_protocol
}

// IPsec VPN
resource "junos-ipsec-policy-based_SecurityIpsecVpnName" "ipsec_vpn_name" {
  resource_name = var.apply_group_name
  name          = var.ipsec_vpn_name
}

resource "junos-ipsec-policy-based_SecurityIpsecVpnEstablish__Tunnels" "ipsec_vpn_establish__tunnels" {
  resource_name      = var.apply_group_name
  name               = var.ipsec_vpn_name
  establish__tunnels = var.ipsec_vpn_establish__tunnels
}

resource "junos-ipsec-policy-based_SecurityIpsecVpnIkeGateway" "ike_gateway_name" {
  resource_name = var.apply_group_name
  name          = var.ipsec_vpn_name
  gateway       = var.ike_gateway_name
}

resource "junos-ipsec-policy-based_SecurityIpsecVpnIkeIpsec__Policy" "ipsec_vpn_policy_name" {
  resource_name = var.apply_group_name
  name          = var.ipsec_vpn_name
  ipsec__policy = var.ipsec_vpn_policy_name
}

// Security Policy 1 from LAN to WAN
resource "junos-ipsec-policy-based_SecurityPoliciesPolicyPolicyName" "sec_pol_1_name" {
  resource_name = var.apply_group_name
  name          = var.sec_pol_1_name
}

resource "junos-ipsec-policy-based_SecurityPoliciesPolicyFrom__Zone__Name" "sec_pol_1_from_zone" {
  resource_name    = var.apply_group_name
  from__zone__name = var.sec_pol_1_from_zone
  to__zone__name   = var.sec_pol_1_to_zone
}

resource "junos-ipsec-policy-based_SecurityPoliciesPolicyTo__Zone__Name" "sec_pol_1_to_zone" {
  resource_name    = var.apply_group_name
  from__zone__name = var.sec_pol_1_from_zone
  to__zone__name   = var.sec_pol_1_to_zone
}

resource "junos-ipsec-policy-based_SecurityPoliciesPolicyPolicyMatchDestination__Address" "sec_pol_1_match_dst_address" {
  resource_name        = var.apply_group_name
  name                 = var.sec_pol_1_name
  from__zone__name     = var.sec_pol_1_from_zone
  to__zone__name       = var.sec_pol_1_to_zone
  destination__address = var.sec_pol_1_match_dst_address
}

resource "junos-ipsec-policy-based_SecurityPoliciesPolicyPolicyMatchSource__Address" "sec_pol_1_match_src_address" {
  resource_name    = var.apply_group_name
  name             = var.sec_pol_1_name
  from__zone__name = var.sec_pol_1_from_zone
  to__zone__name   = var.sec_pol_1_to_zone
  source__address  = var.sec_pol_1_match_src_address
}

resource "junos-ipsec-policy-based_SecurityPoliciesPolicyPolicyMatchApplication" "sec_pol_1_application" {
  resource_name    = var.apply_group_name
  name             = var.sec_pol_1_name
  from__zone__name = var.sec_pol_1_from_zone
  to__zone__name   = var.sec_pol_1_to_zone
  application      = var.sec_pol_1_application
}

resource "junos-ipsec-policy-based_SecurityPoliciesPolicyPolicyThenPermitTunnelIpsec__Vpn" "sec_pol_1_then_tunnel" {
  resource_name    = var.apply_group_name
  name             = var.sec_pol_1_name
  from__zone__name = var.sec_pol_1_from_zone
  to__zone__name   = var.sec_pol_1_to_zone
  ipsec__vpn       = var.ipsec_vpn_name
}

// Security Policy 2 from WAN to LAN
resource "junos-ipsec-policy-based_SecurityPoliciesPolicyPolicyName" "sec_pol_2_name" {
  resource_name = var.apply_group_name
  name          = var.sec_pol_2_name
}

resource "junos-ipsec-policy-based_SecurityPoliciesPolicyFrom__Zone__Name" "sec_pol_2_from_zone" {
  resource_name    = var.apply_group_name
  from__zone__name = var.sec_pol_2_from_zone
  to__zone__name   = var.sec_pol_2_to_zone
}

resource "junos-ipsec-policy-based_SecurityPoliciesPolicyTo__Zone__Name" "sec_pol_2_to_zone" {
  resource_name    = var.apply_group_name
  from__zone__name = var.sec_pol_2_from_zone
  to__zone__name   = var.sec_pol_2_to_zone
}

resource "junos-ipsec-policy-based_SecurityPoliciesPolicyPolicyMatchDestination__Address" "sec_pol_2_match_dst_address" {
  resource_name        = var.apply_group_name
  name                 = var.sec_pol_2_name
  from__zone__name     = var.sec_pol_2_from_zone
  to__zone__name       = var.sec_pol_2_to_zone
  destination__address = var.sec_pol_2_match_dst_address
}

resource "junos-ipsec-policy-based_SecurityPoliciesPolicyPolicyMatchSource__Address" "sec_pol_2_match_src_address" {
  resource_name    = var.apply_group_name
  name             = var.sec_pol_2_name
  from__zone__name = var.sec_pol_2_from_zone
  to__zone__name   = var.sec_pol_2_to_zone
  source__address  = var.sec_pol_2_match_src_address
}

resource "junos-ipsec-policy-based_SecurityPoliciesPolicyPolicyMatchApplication" "sec_pol_2_application" {
  resource_name    = var.apply_group_name
  name             = var.sec_pol_2_name
  from__zone__name = var.sec_pol_2_from_zone
  to__zone__name   = var.sec_pol_2_to_zone
  application      = var.sec_pol_2_application
}

resource "junos-ipsec-policy-based_SecurityPoliciesPolicyPolicyThenPermitTunnelIpsec__Vpn" "sec_pol_2_then_tunnel" {
  resource_name    = var.apply_group_name
  name             = var.sec_pol_2_name
  from__zone__name = var.sec_pol_2_from_zone
  to__zone__name   = var.sec_pol_2_to_zone
  ipsec__vpn       = var.ipsec_vpn_name
}
