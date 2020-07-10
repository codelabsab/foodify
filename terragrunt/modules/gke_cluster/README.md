## Providers

| Name | Version |
|------|---------|
| google | ~> v3.17.0 |
| random | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| daily\_maintenance | The maintenance window for the GKE cluster used by Google for maintenance | `string` | `"19:00"` | no |
| environment | Environment. prod or non-prod. This will decide Region or Zone. | `string` | n/a | yes |
| gke\_auto\_upgrade | Should the node pools Kubernetes version be automatically upgraded | `bool` | `false` | no |
| gke\_change\_timeout | Set the timeout for changes to the cluster | `string` | `"60m"` | no |
| gke\_horizontal\_pod\_autoscaling\_disable | This increases or decreases the number of replica pods a replication controller has based on the resource usage of the existing pods. It ensures that a Heapster pod is running in the cluster | `bool` | `false` | no |
| gke\_http\_load\_balancing\_disable | This makes it easy to set up HTTP load balancers for services in a cluster. It is enabled by default | `bool` | `true` | no |
| gke\_major\_version | Major version to be used by GKE in specified region, latest minor version will be used | `string` | `"1.16."` | no |
| gke\_network\_policy\_enable | Whether network policy is enabled on the cluster | `bool` | `false` | no |
| gke\_network\_policy\_provider | The selected network policy provider. Defaults to CALICO | `string` | `"CALICO"` | no |
| gke\_private\_cluster\_cidr\_block | The CIDR block used for master address range in GKE | `string` | `"10.42.100.0/28"` | no |
| gke\_service\_account | The email of the service account to use | `string` | n/a | yes |
| gke\_upgrade\_max\_surge | Max number of surge nodes used during cluster upgrade. Note that you must have quota for this number of extra nodes. | `string` | `"1"` | no |
| initial\_node\_count | Number of initial nodes on creation of the node pool in GKE | `string` | `"1"` | no |
| max\_node\_count | The maximum amount of nodes that the nodepool can autoscale to in GKE | `string` | `"2"` | no |
| min\_node\_count | The minimum amount of nodes that the nodepool can autoscale to in GKE | `string` | `"1"` | no |
| node\_disk\_size | The disk size used for each node in the node pool in the GKE cluster | `string` | `"30"` | no |
| node\_disk\_type | The disk type used for the node pool in the GKE cluster | `string` | `"pd-standard"` | no |
| node\_image\_type | The image type used for the node pool in the GKE cluster | `string` | `"COS"` | no |
| node\_machine\_type | The machine type used for the node pool in the GKE cluster | `string` | `"n1-standard-1"` | no |
| project\_id | Project ID. The <prefix>-<project>-<suffix>. | `any` | n/a | yes |
| region | GCP region used for all resources | `string` | `"europe-north1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| gke\_cluster\_location | n/a |
| gke\_cluster\_name | n/a |
| gke\_endpoint | n/a |
| gke\_master\_auth\_client\_certificate | n/a |
| gke\_master\_auth\_client\_key | n/a |
| gke\_master\_auth\_cluster\_ca\_certificate | n/a |
| gke\_zones | Output available compute zones as list(string) |

