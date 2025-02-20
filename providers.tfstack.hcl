# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

required_providers {
  azurerm = {
    source  = "hashicorp/azurerm"
    version = "~> 3.87.0"
  }

  tls = {
    source  = "hashicorp/tls"
    version = "~> 4.0.5"
  }
}

variable "client_id" { type = string }
variable "client_secret" { 
  type = string
  ephemeral = true
}
variable "subscription_id" { type = string }
variable "tenant_id" { type = string }


provider "azurerm" "this" {
  config {
    features {}
    // use_cli should be set to false to yield more accurate error messages on auth failure.
    use_cli = false

    client_id       = var.client_id
    client_secret   = var.client_secret
    subscription_id = var.subscription_id
    tenant_id       = var.tenant_id
  }
}

provider "tls" "this" {}
