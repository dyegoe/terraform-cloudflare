variable "zone" {
  description = "The DNS zone name which will be added."
  type        = string
}

variable "account_id" {
  description = "The account ID of the Cloudflare account."
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

# override settings

variable "always_online" {
  description = "Initial setting: off; Module default: on"
  type        = string
  default     = "on"
}
variable "always_use_https" {
  description = "Initital setting: off; Module default: on"
  type        = string
  default     = "on"
}
variable "min_tls_version" {
  description = "Initital setting: 1.0; Module default: 1.2"
  type        = string
  default     = "1.2"
}
variable "origin_max_http_version" {
  description = "Initital setting: ''; Module default: 2"
  type        = string
  default     = "2"
}
variable "ssl" {
  description = "Initital setting: full; Module default: strict"
  type        = string
  default     = "strict"
}
