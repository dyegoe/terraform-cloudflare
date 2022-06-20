output "zone_id" {
  value = cloudflare_zone.this.id
}

output "name_servers" {
  value = cloudflare_zone.this.name_servers
}

output "status" {
  value = cloudflare_zone.this.status
}
