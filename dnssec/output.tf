output "status" {
  description = "The status of the Zone DNSSEC."
  value       = cloudflare_zone_dnssec.this.status
}
output "flags" {
  description = "Zone DNSSEC flags."
  value       = cloudflare_zone_dnssec.this.flags
}
output "algorithm" {
  description = "Zone DNSSEC algorithm."
  value       = cloudflare_zone_dnssec.this.algorithm
}
output "key_type" {
  description = "Key type used for Zone DNSSEC."
  value       = cloudflare_zone_dnssec.this.key_type
}
output "digest_type" {
  description = "Digest Type for Zone DNSSEC."
  value       = cloudflare_zone_dnssec.this.digest_type
}
output "digest_algorithm" {
  description = "Digest algorithm use for Zone DNSSEC."
  value       = cloudflare_zone_dnssec.this.digest_algorithm
}
output "digest" {
  description = "Zone DNSSEC digest."
  value       = cloudflare_zone_dnssec.this.digest
}
output "ds" {
  description = "DS for the Zone DNSSEC."
  value       = cloudflare_zone_dnssec.this.ds
}
output "key_tag" {
  description = "Key Tag for the Zone DNSSEC."
  value       = cloudflare_zone_dnssec.this.key_tag
}
output "public_key" {
  description = "Public Key for the Zone DNSSEC."
  value       = cloudflare_zone_dnssec.this.public_key
}
output "modified_on" {
  description = "Zone DNSSEC updated time."
  value       = cloudflare_zone_dnssec.this.modified_on
}
