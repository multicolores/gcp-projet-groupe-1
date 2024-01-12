## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_google"></a> [google](#requirement\_google) | 5.11.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 5.11.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_compute_backend_bucket.cdn_backend_bucket](https://registry.terraform.io/providers/hashicorp/google/5.11.0/docs/resources/compute_backend_bucket) | resource |
| [google_storage_bucket.bucket](https://registry.terraform.io/providers/hashicorp/google/5.11.0/docs/resources/storage_bucket) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket-name"></a> [bucket-name](#input\_bucket-name) | Le nom du bucket | `string` | n/a | yes |
| <a name="input_cdn-backend-bucket-name"></a> [cdn-backend-bucket-name](#input\_cdn-backend-bucket-name) | Le nom du backend du backend dans le cloud CDN | `string` | n/a | yes |
| <a name="input_project-id"></a> [project-id](#input\_project-id) | L'IP du projet | `string` | n/a | yes |

## Outputs

No outputs.