output "id" {
  description = "The zone ID."
  value       = cloudflare_zone.this.id
}
output "plan" {
  description = "The name of the commercial plan to apply to the zone."
  value       = cloudflare_zone.this.plan
}
output "vanity_name_servers" {
  description = "List of Vanity Nameservers (if set)."
  value       = cloudflare_zone.this.vanity_name_servers
}
output "wildcard_proxiable" {
  description = "Indicates whether wildcard DNS records can receive Cloudflare security and performance features."
  value       = cloudflare_zone.this.meta["wildcard_proxiable"]
}
output "phishing_detected" {
  description = "Indicates if URLs on the zone have been identified as hosting phishing content."
  value       = cloudflare_zone.this.meta["phishing_detected"]
}
output "status" {
  description = "Status of the zone. Valid values: active, pending, initializing, moved, deleted, deactivated."
  value       = cloudflare_zone.this.status
}
output "name_servers" {
  description = "Cloudflare-assigned name servers. This is only populated for zones that use Cloudflare DNS."
  value       = cloudflare_zone.this.name_servers
}
output "verification_key" {
  description = "Contains the TXT record value to validate domain ownership. This is only populated for zones of type partial."
  value       = cloudflare_zone.this.verification_key
}

output "initial_settings" {
  description = "Settings present in the zone at the time the resource is created. This will be used to restore the original settings when this resource is destroyed."
  value       = cloudflare_zone_settings_override.this.initial_settings
}
