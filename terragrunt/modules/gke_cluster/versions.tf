terraform {
  required_version = ">= 0.12"
}

provider "google" {
  version = "~> v3.31.0"
  region  = var.region
}

provider "google-beta" {
  version = "~> 3.31"
}

provider "null" {
  version = "~> 2.1"
}
