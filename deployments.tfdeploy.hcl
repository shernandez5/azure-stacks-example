# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

store "varset" "tokens" {
  id       = "varset-ghrHJqshEhbLtQub"
  category = "env"
}

deployment "production" {
  inputs = {
    client_id       = store.varset.tokens.client_id
    client_secret   = store.varset.tokens.client_secret
    subscription_id = store.varset.tokens.subscription_id
    tenant_id       = store.varset.tokens.tenant_id
  }
}
