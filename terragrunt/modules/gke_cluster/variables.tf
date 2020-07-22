# ---------------------------------------------------------------------------------------------------------------------
# Common
# ---------------------------------------------------------------------------------------------------------------------

variable "setup_prefix" {
  description = "The prefix to use for resource names"
}

variable "project_id" {
  description = "Project ID. The <prefix>-<project>-<suffix>."
}

variable "environment" {
  description = "Environment. prod or non-prod. This will decide Region or Zone."
  type        = string
}

variable "region" {
  description = "GCP region used for all resources"
  default     = "europe-north1"
}

variable "network_self_link" {
  description = "The self link of the Google Compute Engine network"
}

# ---------------------------------------------------------------------------------------------------------------------
# Service Account
# ---------------------------------------------------------------------------------------------------------------------

variable "gke_service_account" {
  description = "The email of the service account to use"
  type        = string
}

# ---------------------------------------------------------------------------------------------------------------------
# GKE
# ---------------------------------------------------------------------------------------------------------------------


variable "gke_major_version" {
  description = "Major version to be used by GKE in specified region, latest minor version will be used"
  type        = string
  default     = "1.16."
}

variable "gke_private_cluster_cidr_block" {
  description = "The CIDR block used for master address range in GKE"
  default     = "10.42.100.0/28"
  # This CIDR block should not overlap with our subnets in the VPC
}

variable "daily_maintenance" {
  description = "The maintenance window for the GKE cluster used by Google for maintenance"
  default     = "19:00"
}

variable "initial_node_count" {
  description = "Number of initial nodes on creation of the node pool in GKE"
  default     = "1"
}

variable "min_node_count" {
  description = "The minimum amount of nodes that the nodepool can autoscale to in GKE"
  default     = "1"
}

variable "max_node_count" {
  description = "The maximum amount of nodes that the nodepool can autoscale to in GKE"
  default     = "2"
}

variable "node_image_type" {
  description = "The image type used for the node pool in the GKE cluster"
  default     = "COS"
}

variable "node_disk_type" {
  description = "The disk type used for the node pool in the GKE cluster"
  default     = "pd-standard"
}

variable "node_machine_type" {
  description = "The machine type used for the node pool in the GKE cluster"
  default     = "n1-standard-1"
}

variable "node_disk_size" {
  description = "The disk size used for each node in the node pool in the GKE cluster"
  default     = "30"
}

variable "gke_auto_upgrade" {
  description = "Should the node pools Kubernetes version be automatically upgraded"
  type        = bool
  default     = false
}

variable "gke_change_timeout" {
  description = "Set the timeout for changes to the cluster"
  default     = "60m"
}

variable "gke_network_policy_enable" {
  description = "Whether network policy is enabled on the cluster"
  type        = bool
  default     = false
}

variable "gke_network_policy_provider" {
  description = "The selected network policy provider. Defaults to CALICO"
  type        = string
  default     = "CALICO"
}

variable "gke_horizontal_pod_autoscaling_disable" {
  description = "This increases or decreases the number of replica pods a replication controller has based on the resource usage of the existing pods. It ensures that a Heapster pod is running in the cluster"
  type        = bool
  default     = false
}

variable "gke_http_load_balancing_disable" {
  description = "This makes it easy to set up HTTP load balancers for services in a cluster. It is enabled by default"
  type        = bool
  default     = true
}

variable "gke_upgrade_max_surge" {
  description = "Max number of surge nodes used during cluster upgrade. Note that you must have quota for this number of extra nodes."
  default     = "1"
}
