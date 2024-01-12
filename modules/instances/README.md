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
| [google_compute_instance.moninstance1](https://registry.terraform.io/providers/hashicorp/google/5.11.0/docs/resources/compute_instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_instance-name"></a> [instance-name](#input\_instance-name) | Le nom de l'instance | `string` | `"value"` | no |
| <a name="input_instance-size"></a> [instance-size](#input\_instance-size) | La taille de l'instance | `string` | n/a | yes |
| <a name="input_subnet-name"></a> [subnet-name](#input\_subnet-name) | Subnet name | `string` | n/a | yes |
| <a name="input_tag"></a> [tag](#input\_tag) | TAG name | `string` | n/a | yes |
| <a name="input_vpc-name"></a> [vpc-name](#input\_vpc-name) | VPC name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vm-name"></a> [vm-name](#output\_vm-name) | The VM name |
