resource "cloudflare_zone" "this" {
  zone   = var.zone
  paused = var.paused
  plan   = var.plan
  type   = var.type
}
