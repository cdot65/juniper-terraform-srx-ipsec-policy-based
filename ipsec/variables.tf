
variable "apply_group_name" {
  type        = string
  description = "Name of our apply-group for the security -> IPsec configuration stanza"
  // default     = "cdot65_ipsec"
}

// IKE gateway
variable "ike_gateway_name" {
  type        = string
  description = "Name of our IKE gateway"
  // default     = "cdot65_ike_gateway"
}

variable "ike_gateway_address" {
  type        = string
  description = "Address of our IKE gateway peer"
  // default     = "56.0.0.1"
}

variable "ike_gateway_ext_iface" {
  type        = string
  description = "External interface facing our IKE gateway peer"
  // default     = "ge-0/0/0.0"
}

// IKE proposal
variable "ike_proposal_name" {
  type        = string
  description = "Name of our IKE proposal"
  // default     = "cdot65_ike_proposal"
}

variable "ike_proposal_auth_alg" {
  type        = string
  description = "Authentication algorithm for IKE proposal"
  // default     = "sha-256"
}

variable "ike_proposal_auth_method" {
  type        = string
  description = "Authentication method for IKE proposal"
  // default     = "pre-shared-keys"
}

variable "ike_proposal_description" {
  type        = string
  description = "Description of our IKE proposal"
  // default     = "DH14-aes-128-sha-256"
}

variable "ike_proposal_dhgroup" {
  type        = string
  description = "Diffe Helman IKE proposal"
  // default     = "group14"
}

variable "ike_proposal_enc_alg" {
  type        = string
  description = "Encryption Algorithm for IKE proposal"
  // default     = "aes-128-cbc"
}

variable "ike_proposal_lifetime" {
  type        = string
  description = "Lifetime for IKE proposal"
  // default     = "1000"
}

// IKE policy
variable "ike_policy_name" {
  type        = string
  description = "Name of our IKE policy"
  // default     = "cdot65_ike_policy"
}

variable "ike_policy_description" {
  type        = string
  description = "Description of our IKE policy"
  // default     = "This is an IKE policy description"
}

variable "ike_policy_mode" {
  type        = string
  description = "Policy IKE mode"
  // default     = "main"
}

variable "ike_policy_preshared" {
  type        = string
  description = "Preshared Key"
  // default     = "juniper123"
}

// Address Book 1
variable "address_book_1_name" {
  type        = string
  description = "Name of our first address book"
  // default     = "cdot65_book1"
}

variable "address_book_1_zone" {
  type        = string
  description = "Attaching an address book to a zone"
  // default     = "LAN"
}

variable "address_book_1_address" {
  type        = string
  description = "Name of address book entry"
  // default     = "cdot65_address1"
}

variable "address_book_1_prefix" {
  type        = string
  description = "Address book entry's prefix"
  // default     = "192.168.1.0/24"
}

// Address Book 2
variable "address_book_2_name" {
  type        = string
  description = "Name of our second address book"
  // default     = "cdot65_book2"
}

variable "address_book_2_zone" {
  type        = string
  description = "Attaching an address book to a zone"
  // default     = "WAN"
}

variable "address_book_2_address" {
  type        = string
  description = "Name of address book entry"
  // default     = "cdot65_address2"
}

variable "address_book_2_prefix" {
  type        = string
  description = "Address book entry's prefix"
  // default     = "192.168.2.0/24"
}

// TCP MSS
variable "ipsec_vpn_mss" {
  type        = string
  description = "TCP MSS Setting for IPsec VPN tunnel"
  // default     = "1350"
}

// IPsec VPN Policy
variable "ipsec_vpn_policy_name" {
  type        = string
  description = "Name of our IPsec VPN Policy"
  // default     = "cdot65_ipsec_policy"
}

// IPsec VPN Proposal
variable "ipsec_vpn_proposal_name" {
  type        = string
  description = "Name of our IPsec VPN Proposal"
  // default     = "cdot65_ipsec_proposal"
}

variable "ipsec_vpn_proposal_auth_alg" {
  type        = string
  description = "Authentication Algorithm VPN Proposal"
  // default     = "hmac-sha-256-128"
}

variable "ipsec_vpn_proposal_description" {
  type        = string
  description = "Description of our VPN Proposal"
  // default     = "This is a description."
}

variable "ipsec_vpn_proposal_encrypt_alg" {
  type        = string
  description = "Encryption algorithm for our VPN Proposal"
  // default     = "aes-256-cbc"
}

variable "ipsec_vpn_proposal_protocol" {
  type        = string
  description = "IPsec VPN protocol"
  // default     = "esp"
}

// IPsec VPN
variable "ipsec_vpn_name" {
  type        = string
  description = "Name of our IPsec VPN"
  // default     = "cdot65_ipsec_vpn"
}

variable "ipsec_vpn_establish__tunnels" {
  type        = string
  description = "Knob to turn up tunnels immediately"
  // default     = "immediately"
}

// security policy 1
variable "sec_pol_1_name" {
  type        = string
  description = "Name of our security policy"
  // default     = "VPN"
}

variable "sec_pol_1_from_zone" {
  type        = string
  description = "From zone LAN"
  // default     = "LAN"
}

variable "sec_pol_1_to_zone" {
  type        = string
  description = "To zone WAN"
  // default     = "WAN"
}

variable "sec_pol_1_match_dst_address" {
  type        = string
  description = "Match traffic destined to cdot65_address2"
  // default     = "cdot65_address2"
}

variable "sec_pol_1_match_src_address" {
  type        = string
  description = "Match traffic sourced from cdot65_address1"
  // default     = "cdot65_address1"
}

variable "sec_pol_1_application" {
  type        = string
  description = "Match any application"
  // default     = "any"
}

// security policy 2
variable "sec_pol_2_name" {
  type        = string
  description = "Name of our security policy"
  // default     = "VPN"
}

variable "sec_pol_2_from_zone" {
  type        = string
  description = "From zone WAN"
  // default     = "WAN"
}

variable "sec_pol_2_to_zone" {
  type        = string
  description = "To zone LAN"
  // default     = "LAN"
}

variable "sec_pol_2_match_dst_address" {
  type        = string
  description = "Match traffic destined to cdot65_address1"
  // default     = "cdot65_address1"
}

variable "sec_pol_2_match_src_address" {
  type        = string
  description = "Match traffic sourced from cdot65_address2"
  // default     = "cdot65_address2"
}

variable "sec_pol_2_application" {
  type        = string
  description = "Match any application"
  // default     = "any"
}
