# Cloudflare DNSSec

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
| [cloudflare_zone_dnssec.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/zone_dnssec) | resource |
| [cloudflare_zone.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/data-sources/zone) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_zone"></a> [zone](#input\_zone) | The DNS zone name which will be added. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_algorithm"></a> [algorithm](#output\_algorithm) | Zone DNSSEC algorithm. |
| <a name="output_digest"></a> [digest](#output\_digest) | Zone DNSSEC digest. |
| <a name="output_digest_algorithm"></a> [digest\_algorithm](#output\_digest\_algorithm) | Digest algorithm use for Zone DNSSEC. |
| <a name="output_digest_type"></a> [digest\_type](#output\_digest\_type) | Digest Type for Zone DNSSEC. |
| <a name="output_ds"></a> [ds](#output\_ds) | DS for the Zone DNSSEC. |
| <a name="output_flags"></a> [flags](#output\_flags) | Zone DNSSEC flags. |
| <a name="output_key_tag"></a> [key\_tag](#output\_key\_tag) | Key Tag for the Zone DNSSEC. |
| <a name="output_key_type"></a> [key\_type](#output\_key\_type) | Key type used for Zone DNSSEC. |
| <a name="output_modified_on"></a> [modified\_on](#output\_modified\_on) | Zone DNSSEC updated time. |
| <a name="output_public_key"></a> [public\_key](#output\_public\_key) | Public Key for the Zone DNSSEC. |
| <a name="output_status"></a> [status](#output\_status) | The status of the Zone DNSSEC. |
<!-- END_TF_DOCS -->
<!-- markdownlint-enable MD033 -->
