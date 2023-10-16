resource "cloudflare_zone" "this" {
  account_id = var.account_id
  zone       = var.zone
  paused     = var.paused
  plan       = var.plan
  type       = var.type
}

resource "cloudflare_zone_settings_override" "this" {
  zone_id = cloudflare_zone.this.id
  settings {
    always_online           = var.always_online
    always_use_https        = var.always_use_https
    min_tls_version         = var.min_tls_version
    origin_max_http_version = var.origin_max_http_version
    ssl                     = var.ssl
  }
}
