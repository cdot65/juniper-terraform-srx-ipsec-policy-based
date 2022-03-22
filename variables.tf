variable "juniper_user_name" {
  type        = string
  description = "Username to SSH into the Juniper device"
  sensitive   = true
}

variable "juniper_user_password" {
  type        = string
  description = "Password to SSH into the Juniper device"
  sensitive   = true
}

variable "juniper_ssh_port" {
  type        = number
  description = "Port number to SSH into the Juniper device"
  default     = 22
}

variable "juniper_ssh_key" {
  type        = string
  description = "SSH private key for authentication to Juniper device"
  default     = ""
}
