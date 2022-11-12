terraform {
  required_providers {
    contabo = {
      source = "contabo/contabo"
      version = ">= 0.1.16"
    }
  }
}

# Configure your Contabo API credentials in provider stanza
provider "contabo" {
  oauth2_client_id     = "[client-id]"
  oauth2_client_secret = "[client_secret]"
  oauth2_user          = "[api_user]"
  oauth2_pass          = "[api_password]"
}

# Create a default contabo VPS instance
resource "contabo_instance" "default_instance" {}

# Output our newly created instances
output "default_instance_output" {
  description = "Our first default instance"
  value       = contabo_instance.default_instance
}