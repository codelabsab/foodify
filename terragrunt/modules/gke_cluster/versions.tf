terraform {
  required_version = ">= 0.12"
}

provider "google" {
  version = "~> v3.17.0"
  region  = var.region
}

provider "google-beta" {
  version = ">= 2.14"
}

provider "null" {
  version = "~> 2.1"
}
