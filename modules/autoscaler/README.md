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
| [google_compute_autoscaler.autoscaler_app](https://registry.terraform.io/providers/hashicorp/google/5.11.0/docs/resources/compute_autoscaler) | resource |
| [google_compute_instance_group_manager.group-instance](https://registry.terraform.io/providers/hashicorp/google/5.11.0/docs/resources/compute_instance_group_manager) | resource |
| [google_compute_instance_template.instance-app](https://registry.terraform.io/providers/hashicorp/google/5.11.0/docs/resources/compute_instance_template) | resource |
| [google_compute_target_pool.target_pool](https://registry.terraform.io/providers/hashicorp/google/5.11.0/docs/resources/compute_target_pool) | resource |
| [google_compute_image.debian_11](https://registry.terraform.io/providers/hashicorp/google/5.11.0/docs/data-sources/compute_image) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_instance-size"></a> [instance-size](#input\_instance-size) | The instance size | `string` | n/a | yes |
| <a name="input_subnet-name"></a> [subnet-name](#input\_subnet-name) | The subnet name | `string` | n/a | yes |
| <a name="input_vpc-name"></a> [vpc-name](#input\_vpc-name) | The VPC name | `string` | n/a | yes |

## Outputs

No outputs.
