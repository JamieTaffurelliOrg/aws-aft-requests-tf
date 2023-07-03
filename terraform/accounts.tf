module "testabc" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "jamietaffurelli+awstestabc@jamietaffurelli.onmicrosoft.com"
    AccountName               = "testabc"
    ManagedOrganizationalUnit = "Platform"
    SSOUserEmail              = "jamietaffurelli+awstestabc@jamietaffurelli.onmicrosoft.com"
    SSOUserFirstName          = "Jamie"
    SSOUserLastName           = "Taffurelli"
  }

  account_tags = {
    "data-classification" = "confidential"
    "criticality"         = "mission-critical"
    "ops-commitment"      = "workload-operations"
    "ops-team"            = "sre"
    "cost-owner"          = "jltaffurelli@outlook.com"
    "owner"               = "jltaffurelli@outlook.com"
    "sla"                 = "high"
    "environment"         = "prod"
    "stack"               = "identity"
  }

  change_management_parameters = {
    change_requested_by = "Jamie Taffurelli"
    change_reason       = "Creating account for idenity related resources (e.g. OIDC providers)"
  }

  account_customizations_name = ""
}

module "testabc1" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "jamietaffurelli+awstestabc1@jamietaffurelli.onmicrosoft.com"
    AccountName               = "testabc1"
    ManagedOrganizationalUnit = "Identity (ou-kh9q-rd0xycel)"
    SSOUserEmail              = "jamietaffurelli+awstestabc1@jamietaffurelli.onmicrosoft.com"
    SSOUserFirstName          = "Jamie"
    SSOUserLastName           = "Taffurelli"
  }

  account_tags = {
    "data-classification" = "confidential"
    "criticality"         = "mission-critical"
    "ops-commitment"      = "workload-operations"
    "ops-team"            = "sre"
    "cost-owner"          = "jltaffurelli@outlook.com"
    "owner"               = "jltaffurelli@outlook.com"
    "sla"                 = "high"
    "environment"         = "prod"
    "stack"               = "identity"
  }

  change_management_parameters = {
    change_requested_by = "Jamie Taffurelli"
    change_reason       = "Creating account for idenity related resources (e.g. OIDC providers)"
  }

  account_customizations_name = ""
}
