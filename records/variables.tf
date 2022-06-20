variable "zone_id" {
  description = "The DNS zone ID."
  type        = string
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
