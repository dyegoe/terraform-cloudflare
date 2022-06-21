variable "zone" {
  description = "The DNS zone name which will be added."
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
