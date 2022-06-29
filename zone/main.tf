resource "cloudflare_zone" "this" {
  zone   = var.zone
  paused = var.paused
  plan   = var.plan
  type   = var.type
}

resource "cloudflare_zone_settings_override" "this" {
  zone_id = cloudflare_zone.this.id
  settings {
    always_online             = var.always_online
    always_use_https          = var.always_use_https
    automatic_https_rewrites  = var.automatic_https_rewrites
    binary_ast                = var.binary_ast
    brotli                    = var.brotli
    browser_cache_ttl         = var.browser_cache_ttl
    browser_check             = var.browser_check
    cache_level               = var.cache_level
    challenge_ttl             = var.challenge_ttl
    ciphers                   = var.ciphers
    development_mode          = var.development_mode
    early_hints               = var.early_hints
    email_obfuscation         = var.email_obfuscation
    filter_logs_to_cloudflare = var.filter_logs_to_cloudflare
    h2_prioritization         = var.h2_prioritization
    hotlink_protection        = var.hotlink_protection
    http3                     = var.http3
    ip_geolocation            = var.ip_geolocation
    ipv6                      = var.ipv6
    log_to_cloudflare         = var.log_to_cloudflare
    max_upload                = var.max_upload
    min_tls_version           = var.min_tls_version
    opportunistic_encryption  = var.opportunistic_encryption
    opportunistic_onion       = var.opportunistic_onion
    orange_to_orange          = var.orange_to_orange
    privacy_pass              = var.privacy_pass
    pseudo_ipv4               = var.pseudo_ipv4
    rocket_loader             = var.rocket_loader
    security_level            = var.security_level
    server_side_exclude       = var.server_side_exclude
    ssl                       = var.ssl
    tls_1_3                   = var.tls_1_3
    tls_client_auth           = var.tls_client_auth
    universal_ssl             = var.universal_ssl
    visitor_ip                = var.visitor_ip
    waf                       = var.waf
    websockets                = var.websockets
    zero_rtt                  = var.zero_rtt
    minify {
      css  = var.minify.css
      html = var.minify.html
      js   = var.minify.js
    }
    mobile_redirect {
      mobile_subdomain = var.mobile_redirect.mobile_subdomain
      status           = var.mobile_redirect.status
      strip_uri        = var.mobile_redirect.strip_uri
    }
    security_header {
      enabled            = var.security_header.enabled
      include_subdomains = var.security_header.include_subdomains
      max_age            = var.security_header.max_age
      nosniff            = var.security_header.nosniff
      preload            = var.security_header.preload
    }

    # cname_flattening            = "flatten_at_root" # read-only
    # http2                       = "on"              # read-only
    # image_resizing              = "off"             # read-only
    # mirage                      = "off"             # read-only
    # origin_error_page_pass_thru = "off"             # read-only
    # polish                      = "off"             # read-only
    # prefetch_preload            = "off"             # read-only
    # proxy_read_timeout          = "100"             # read-only
    # response_buffering          = "off"             # read-only
    # sort_query_string_for_cache = "off"             # read-only
    # true_client_ip_header       = "off"             # read-only
    # webp                        = "off"             # read-only
  }
}
