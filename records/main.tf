data "cloudflare_zone" "this" {
  zone_id = var.zone_id
}
resource "cloudflare_record" "this" {
  for_each = var.zone_records
  zone_id  = var.zone_id
  name     = each.value.name == "@" ? data.cloudflare_zone.this.name : each.value.name
  type     = each.value.type
  value    = each.value.value
  ttl      = each.value.ttl
  priority = each.value.priority == "" ? null : each.value.priority
  proxied  = each.value.proxied
}
