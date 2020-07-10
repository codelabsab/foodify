### GKE get credentials

This module will run gcloud command and get-credentials for this particular GKE cluster.

## Providers

| Name | Version |
|------|---------|
| null | >= 2.1.2 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| environment | Environment. prod or non-prod. This will decide Region or Zone. | `string` | n/a | yes |
| gke\_cluster\_name | GKE cluster name. <project>-gke-<random\_id> | `any` | n/a | yes |
| gke\_zones | Available gke compute zones. | `list(string)` | n/a | yes |
| project\_id | Project ID. The <prefix>-<project>-<suffix>. | `any` | n/a | yes |
| region | GCP region used for all resources | `any` | n/a | yes |

## Outputs

No output.

