data "cloudflare_zone" "this" {
  name = var.zone
}

resource "cloudflare_zone_dnssec" "this" {
  zone_id = data.cloudflare_zone.this.id
}
