# Simple Terraform Template

This Terraform template demonstrates how to use variables for SSH keys, TLS certificates, and string data, then output them after apply.

## Files

- [`main.tf`](simple-terraform/main.tf:1) - Main Terraform configuration with variables and outputs
- [`terraform.tfvars.example`](simple-terraform/terraform.tfvars.example:1) - Example variable values

## Variables

- `ssh_key` - SSH public key (sensitive)
- `tls_certificate` - TLS certificate content (sensitive)
- `string_data` - Simple string data

## Usage

1. Copy the example file:
   ```bash
   cd simple-terraform
   cp terraform.tfvars.example terraform.tfvars
   ```

2. Edit `terraform.tfvars` with your actual values

3. Initialize Terraform:
   ```bash
   terraform init
   ```

4. Apply the configuration:
   ```bash
   terraform apply
   ```

5. View the outputs (sensitive outputs require explicit flag):
   ```bash
   terraform output
   terraform output -json
   ```

## Outputs

After `terraform apply`, the following outputs will be displayed:

- `ssh_key_output` - The SSH key provided (sensitive)
- `tls_certificate_output` - The TLS certificate provided (sensitive)
- `string_data_output` - The string data provided

**Note:** Sensitive outputs are hidden by default. Use `terraform output <output_name>` to view them individually.