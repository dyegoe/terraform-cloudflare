data "cloudflare_zone" "this" {
  name = var.zone
}

resource "cloudflare_record" "this" {
  for_each = var.zone_records
  zone_id  = data.cloudflare_zone.this.id
  name     = each.value.name == "@" ? var.zone : each.value.name
  type     = each.value.type
  value    = each.value.value
  ttl      = each.value.ttl
  priority = each.value.priority == "" ? null : each.value.priority
  proxied  = each.value.proxied
}
