resource "cloudflare_zone" "this" {
  zone   = var.zone
  paused = var.paused
  plan   = var.plan
  type   = var.type
}

resource "cloudflare_record" "this" {
  for_each = var.zone_records
  zone_id  = cloudflare_zone.this.id
  name     = each.value.name
  type     = each.value.type
  value    = each.value.value
  ttl      = each.value.ttl
  priority = try(each.value.priority, null)
  proxied  = each.value.proxied
}
