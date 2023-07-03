/*module "identity-01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "jamietaffurelli+aws-identity@jamietaffurelli.onmicrosoft.com"
    AccountName               = "identity-01"
    ManagedOrganizationalUnit = "Security"
    SSOUserEmail              = "jamietaffurelli+aws-identity@jamietaffurelli.onmicrosoft.com"
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
}*/

module "Identity-identity-shared" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "jamietaffurelli+aws-identity-shared@jamietaffurelli.onmicrosoft.com"
    AccountName               = "identity-shared"
    ManagedOrganizationalUnit = "Identity (ou-kh9q-rd0xycel)"
    SSOUserEmail              = "jamietaffurelli+aws-identity-shared@jamietaffurelli.onmicrosoft.com"
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
