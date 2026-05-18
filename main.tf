terraform {
  required_version = ">= 1.0"
}

# Define the variables
variable "ssh_key" {
  description = "SSH public key"
  type        = string
  sensitive   = true
}

variable "tls_certificate" {
  description = "TLS certificate content"
  type        = string
  sensitive   = true
}

variable "string_data" {
  description = "Simple string data"
  type        = string
}

# Output the variables (they will be printed after apply)
output "ssh_key_output" {
  description = "SSH key provided"
  value       = var.ssh_key
  sensitive   = true
}

output "tls_certificate_output" {
  description = "TLS certificate provided"
  value       = var.tls_certificate
  sensitive   = true
}

output "string_data_output" {
  description = "String data provided"
  value       = var.string_data
}