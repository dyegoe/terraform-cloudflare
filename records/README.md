# Cloudflare Records

<!-- markdownlint-disable MD033 -->
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.9 |
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | ~> 4.16 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | ~> 4.16 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [cloudflare_record.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/record) | resource |
| [cloudflare_zone.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/data-sources/zone) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_zone"></a> [zone](#input\_zone) | The DNS zone name which will be added. | `string` | n/a | yes |
| <a name="input_zone_records"></a> [zone\_records](#input\_zone\_records) | Map of objects that describe the zone record to add. Attention: if the record has no 'priority', let it but without value. | <pre>map(object({<br>    name     = string<br>    type     = string<br>    value    = string<br>    ttl      = number<br>    priority = string<br>    proxied  = bool<br>  }))</pre> | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
<!-- markdownlint-enable MD033 -->
