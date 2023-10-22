# Cloudflare Zone

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
| [cloudflare_zone.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/zone) | resource |
| [cloudflare_zone_settings_override.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/zone_settings_override) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_id"></a> [account\_id](#input\_account\_id) | The account ID of the Cloudflare account. | `string` | n/a | yes |
| <a name="input_always_online"></a> [always\_online](#input\_always\_online) | Initial setting: off; Module default: on | `string` | `"on"` | no |
| <a name="input_always_use_https"></a> [always\_use\_https](#input\_always\_use\_https) | Initital setting: off; Module default: on | `string` | `"on"` | no |
| <a name="input_min_tls_version"></a> [min\_tls\_version](#input\_min\_tls\_version) | Initital setting: 1.0; Module default: 1.2 | `string` | `"1.2"` | no |
| <a name="input_origin_max_http_version"></a> [origin\_max\_http\_version](#input\_origin\_max\_http\_version) | Initital setting: ''; Module default: 2 | `string` | `"2"` | no |
| <a name="input_paused"></a> [paused](#input\_paused) | Boolean of whether this zone is paused (traffic bypasses Cloudflare). Default: false. | `bool` | `false` | no |
| <a name="input_plan"></a> [plan](#input\_plan) | The name of the commercial plan to apply to the zone, can be updated once the zone is created. Default is free | `string` | `"free"` | no |
| <a name="input_ssl"></a> [ssl](#input\_ssl) | Initital setting: full; Module default: strict | `string` | `"strict"` | no |
| <a name="input_type"></a> [type](#input\_type) | A full zone implies that DNS is hosted with Cloudflare. A partial zone is typically a partner-hosted zone or a CNAME setup. Valid values: full, partial. Default is full | `string` | `"full"` | no |
| <a name="input_zone"></a> [zone](#input\_zone) | The DNS zone name which will be added. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The zone ID. |
| <a name="output_name_servers"></a> [name\_servers](#output\_name\_servers) | Cloudflare-assigned name servers. This is only populated for zones that use Cloudflare DNS. |
| <a name="output_phishing_detected"></a> [phishing\_detected](#output\_phishing\_detected) | Indicates if URLs on the zone have been identified as hosting phishing content. |
| <a name="output_plan"></a> [plan](#output\_plan) | The name of the commercial plan to apply to the zone. |
| <a name="output_status"></a> [status](#output\_status) | Status of the zone. Valid values: active, pending, initializing, moved, deleted, deactivated. |
| <a name="output_vanity_name_servers"></a> [vanity\_name\_servers](#output\_vanity\_name\_servers) | List of Vanity Nameservers (if set). |
| <a name="output_verification_key"></a> [verification\_key](#output\_verification\_key) | Contains the TXT record value to validate domain ownership. This is only populated for zones of type partial. |
| <a name="output_wildcard_proxiable"></a> [wildcard\_proxiable](#output\_wildcard\_proxiable) | Indicates whether wildcard DNS records can receive Cloudflare security and performance features. |
<!-- END_TF_DOCS -->
<!-- markdownlint-enable MD033 -->
