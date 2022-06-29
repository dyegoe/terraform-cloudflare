variable "zone" {
  description = "The DNS zone name which will be added."
  type        = string
}

variable "paused" {
  description = "Boolean of whether this zone is paused (traffic bypasses Cloudflare). Default: false."
  type        = bool
  default     = false
}

variable "plan" {
  description = "The name of the commercial plan to apply to the zone, can be updated once the zone is created. Default is free"
  type        = string
  default     = "free"
}

variable "type" {
  description = "A full zone implies that DNS is hosted with Cloudflare. A partial zone is typically a partner-hosted zone or a CNAME setup. Valid values: full, partial. Default is full"
  type        = string
  default     = "full"
}

variable "always_online" {
  description = "Default: on"
  type        = string
  default     = "on"
}
variable "always_use_https" {
  description = "Default: on"
  type        = string
  default     = "on"
}
variable "automatic_https_rewrites" {
  description = "Default: on"
  type        = string
  default     = "on"
}
variable "binary_ast" {
  description = "Default: off"
  type        = string
  default     = "off"
}
variable "brotli" {
  description = "Default: on"
  type        = string
  default     = "on"
}
variable "browser_cache_ttl" {
  description = "Default: 14400"
  type        = number
  default     = 14400
}
variable "browser_check" {
  description = "Default: on"
  type        = string
  default     = "on"
}
variable "cache_level" {
  description = "Default: aggressive"
  type        = string
  default     = "aggressive"
}
variable "challenge_ttl" {
  description = "Default: 1800"
  type        = number
  default     = 1800
}
variable "ciphers" {
  description = "Default: default = []"
  type        = list(string)
  default     = []
}
variable "development_mode" {
  description = "Default: off"
  type        = string
  default     = "off"
}
variable "early_hints" {
  description = "Default: off"
  type        = string
  default     = "off"
}
variable "email_obfuscation" {
  description = "Default: on"
  type        = string
  default     = "on"
}
variable "filter_logs_to_cloudflare" {
  description = "Default: off"
  type        = string
  default     = "off"
}
variable "h2_prioritization" {
  description = "Default: off"
  type        = string
  default     = "off"
}
variable "hotlink_protection" {
  description = "Default: off"
  type        = string
  default     = "off"
}
variable "http3" {
  description = "Default: on"
  type        = string
  default     = "on"
}
variable "ip_geolocation" {
  description = "Default: on"
  type        = string
  default     = "on"
}
variable "ipv6" {
  description = "Default: on"
  type        = string
  default     = "on"
}
variable "log_to_cloudflare" {
  description = "Default: on"
  type        = string
  default     = "on"
}
variable "max_upload" {
  description = "Default: 100"
  type        = number
  default     = 100
}
variable "min_tls_version" {
  description = "Default: 1.2"
  type        = string
  default     = "1.2"
}
variable "opportunistic_encryption" {
  description = "Default: on"
  type        = string
  default     = "on"
}
variable "opportunistic_onion" {
  description = "Default: on"
  type        = string
  default     = "on"
}
variable "orange_to_orange" {
  description = "Default: off"
  type        = string
  default     = "off"
}
variable "privacy_pass" {
  description = "Default: on"
  type        = string
  default     = "on"
}
variable "pseudo_ipv4" {
  description = "Default: off"
  type        = string
  default     = "off"
}
variable "rocket_loader" {
  description = "Default: off"
  type        = string
  default     = "off"
}
variable "security_level" {
  description = "Default: medium"
  type        = string
  default     = "medium"
}
variable "server_side_exclude" {
  description = "Default: on"
  type        = string
  default     = "on"
}
variable "ssl" {
  description = "Default: strict"
  type        = string
  default     = "strict"
}
variable "tls_1_2_only" {
  description = "Default: off"
  type        = string
  default     = "off"
}
variable "tls_1_3" {
  description = "Default: on"
  type        = string
  default     = "on"
}
variable "tls_client_auth" {
  description = "Default: off"
  type        = string
  default     = "off"
}
variable "universal_ssl" {
  description = "Default: ''"
  type        = string
  default     = ""
}
variable "visitor_ip" {
  description = "Default: on"
  type        = string
  default     = "on"
}
variable "waf" {
  description = "Default: off"
  type        = string
  default     = "off"
}
variable "websockets" {
  description = "Default: on"
  type        = string
  default     = "on"
}
variable "zero_rtt" {
  description = "Default: off"
  type        = string
  default     = "off"
}
variable "minify" {
  type = list(map(string))
  default = [
    {
      css  = "off"
      html = "off"
      js   = "off"
    },
  ]
}
variable "mobile_redirect" {
  type = list(object())
  default = [
    {
      mobile_subdomain = ""
      status           = "off"
      strip_uri        = false
    },
  ]
}
variable "security_header" {
  type = list(object())
  default = [
    {
      enabled            = false
      include_subdomains = false
      max_age            = 0
      nosniff            = false
      preload            = false
    },
  ]
}
