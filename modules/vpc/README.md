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
| [google_compute_firewall.rule-allow-all-ssh-to-app](https://registry.terraform.io/providers/hashicorp/google/5.11.0/docs/resources/compute_firewall) | resource |
| [google_compute_firewall.rule-allow-all-ssh-to-bastion](https://registry.terraform.io/providers/hashicorp/google/5.11.0/docs/resources/compute_firewall) | resource |
| [google_compute_firewall.rule-allow-bastion-ssh-to-app](https://registry.terraform.io/providers/hashicorp/google/5.11.0/docs/resources/compute_firewall) | resource |
| [google_compute_firewall.rule-deny-all](https://registry.terraform.io/providers/hashicorp/google/5.11.0/docs/resources/compute_firewall) | resource |
| [google_compute_network.vpc_network](https://registry.terraform.io/providers/hashicorp/google/5.11.0/docs/resources/compute_network) | resource |
| [google_compute_subnetwork.subnet_network](https://registry.terraform.io/providers/hashicorp/google/5.11.0/docs/resources/compute_subnetwork) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_vpc-ip-plage"></a> [vpc-ip-plage](#input\_vpc-ip-plage) | The VPC id plage | `string` | n/a | yes |
| <a name="input_vpc-name"></a> [vpc-name](#input\_vpc-name) | The VPC Name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_subnet-name"></a> [subnet-name](#output\_subnet-name) | The subnet name |
| <a name="output_vpc-id"></a> [vpc-id](#output\_vpc-id) | The VPC ID name |
| <a name="output_vpc-name"></a> [vpc-name](#output\_vpc-name) | The VPC name |
