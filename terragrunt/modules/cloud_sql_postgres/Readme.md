## Providers

| Name | Version |
|------|---------|
| google | n/a |
| random | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| db\_instance\_name | Name of database | `string` | `"master-instance"` | no |
| postgres\_password | Password for the postgres user | `string` | `""` | no |
| postgres\_user | Default user for the postgres instance | `string` | `"admin"` | no |
| postgres\_version | version of postgres | `string` | `"11"` | no |
| project\_id | Project ID. The <prefix>-<project>-<suffix>. | `any` | n/a | yes |
| region | GCP region used for all resources | `string` | `"europe-north1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| postgres\_connection\_string | n/a |
| postgres\_password | n/a |
| postgres\_public\_ip\_address | n/a |
| postgres\_username | n/a |

