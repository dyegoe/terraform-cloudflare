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

variable "zone_records" {
  description = "Map of objects that describe the zone record to add. Attention: if the record has no 'priority', let it but without value."
  type = map(object({
    name     = string
    type     = string
    value    = string
    ttl      = number
    priority = string
    proxied  = bool
  }))
}