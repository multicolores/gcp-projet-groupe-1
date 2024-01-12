## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_google"></a> [google](#requirement\_google) | 5.11.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 5.11.0 |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_sql_database.database](https://registry.terraform.io/providers/hashicorp/google/5.11.0/docs/resources/sql_database) | resource |
| [google_sql_database_instance.postgres-db](https://registry.terraform.io/providers/hashicorp/google/5.11.0/docs/resources/sql_database_instance) | resource |
| [google_sql_user.user](https://registry.terraform.io/providers/hashicorp/google/5.11.0/docs/resources/sql_user) | resource |
| [random_password.db_password](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_vpc-network-id"></a> [vpc-network-id](#input\_vpc-network-id) | The VPC network id name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_db-password"></a> [db-password](#output\_db-password) | The password of the cloud sql db generated automatically |
