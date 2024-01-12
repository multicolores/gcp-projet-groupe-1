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
| [google_secret_manager_secret.secret-manager](https://registry.terraform.io/providers/hashicorp/google/5.11.0/docs/resources/secret_manager_secret) | resource |
| [google_secret_manager_secret_version.secret_version](https://registry.terraform.io/providers/hashicorp/google/5.11.0/docs/resources/secret_manager_secret_version) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_secret-manager-name"></a> [secret-manager-name](#input\_secret-manager-name) | Secret manager name | `string` | n/a | yes |
| <a name="input_secret-password"></a> [secret-password](#input\_secret-password) | Secret password of postgress db | `string` | n/a | yes |

## Outputs

No outputs.
