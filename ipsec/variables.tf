
variable "apply_group_name" {
  type        = string
  description = "Name of our apply-group for the security -> IPsec configuration stanza"
  default     = "cdot65_ipsec"
}

// Address Book 1
variable "address_book_1_name" {
  type        = string
  description = "Name of our first address book"
  default     = "cdot65_book1"
}

variable "address_book_1_zone" {
  type        = string
  description = "Attaching an address book to a zone"
  default     = "LAN"
}

variable "address_book_1_address" {
  type        = string
  description = "Name of address book entry"
  default     = "cdot65_address1"
}

variable "address_book_1_prefix" {
  type        = string
  description = "Address book entry's prefix"
  default     = "192.168.1.0/24"
}

// Address Book 2
variable "address_book_2_name" {
  type        = string
  description = "Name of our second address book"
  default     = "cdot65_book2"
}

variable "address_book_2_zone" {
  type        = string
  description = "Attaching an address book to a zone"
  default     = "WAN"
}

variable "address_book_2_address" {
  type        = string
  description = "Name of address book entry"
  default     = "cdot65_address2"
}

variable "address_book_2_prefix" {
  type        = string
  description = "Address book entry's prefix"
  default     = "192.168.2.0/24"
}

// TCP MSS
variable "ipsec_vpn_mss" {
  type        = string
  description = "TCP MSS Setting for IPsec VPN tunnel"
  default     = "1350"
}

// IPsec VPN Policy
variable "ipsec_vpn_policy_name" {
  type        = string
  description = "Name of our IPsec VPN Policy"
  default     = "cdot65_ipsec_policy"
}

// IPsec VPN Proposal
variable "ipsec_vpn_proposal_name" {
  type        = string
  description = "Name of our IPsec VPN Proposal"
  default     = "cdot65_ipsec_proposal"
}

variable "ipsec_vpn_proposal_auth_alg" {
  type        = string
  description = "Authentication Algorithm VPN Proposal"
  default     = "hmac-sha-256-128"
}

variable "ipsec_vpn_proposal_description" {
  type        = string
  description = "Description of our VPN Proposal"
  default     = "This is a description."
}

variable "ipsec_vpn_proposal_encrypt_alg" {
  type        = string
  description = "Encryption algorithm for our VPN Proposal"
  default     = "aes-256-cbc"
}

variable "ipsec_vpn_proposal_protocol" {
  type        = string
  description = "IPsec VPN protocol"
  default     = "esp"
}

// IPsec VPN
variable "ipsec_vpn_name" {
  type        = string
  description = "Name of our IPsec VPN"
  default     = "cdot65_ipsec_vpn"
}

variable "ipsec_vpn_establish__tunnels" {
  type        = string
  description = "Knob to turn up tunnels immediately"
  default     = "immediately"
}

variable "ike_gateway_name" {
  type        = string
  description = "Name of our IKE gateway"
  default     = "cdot65_ike_gateway"
}
