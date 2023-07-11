module "tf-ext-01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws+tf-ext-01@jamietaffurelli.com"
    AccountName               = "tf-ext-01"
    ManagedOrganizationalUnit = "tf-external (ou-mi22-j6115ulv)"
    SSOUserEmail              = "aws+tf-ext-01@jamietaffurelli.com"
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
    "stack"               = "terraform"
  }

  change_management_parameters = {
    change_requested_by = "Jamie Taffurelli"
    change_reason       = "Creating account for external services that have tf state"
  }

  account_customizations_name = ""
}

module "iden-shrd-01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws+iden-shrd-01@jamietaffurelli.com"
    AccountName               = "iden-shrd-01"
    ManagedOrganizationalUnit = "identity (ou-mi22-xzjdvlvv)"
    SSOUserEmail              = "aws+iden-shrd-01@jamietaffurelli.com"
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

/*module "conn-dev-01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws+conn-dev-01@jamietaffurelli.com"
    AccountName               = "conn-dev-01"
    ManagedOrganizationalUnit = "connectivity (ou-mi22-6plq5blq)"
    SSOUserEmail              = "aws+conn-dev-01@jamietaffurelli.com"
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
    "environment"         = "dev"
    "stack"               = "connectivity"
  }

  change_management_parameters = {
    change_requested_by = "Jamie Taffurelli"
    change_reason       = "Creating account for networking dev related resources"
  }

  account_customizations_name = ""
}

/*module "conn-prod-01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "jamietaffurelli+aws-conn-prod-01@jamietaffurelli.onmicrosoft.com"
    AccountName               = "conn-prod-01"
    ManagedOrganizationalUnit = "Connectivity (ou-kh9q-prwg8dbb)"
    SSOUserEmail              = "jamietaffurelli+aws-conn-prod-01@jamietaffurelli.onmicrosoft.com"
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
    "stack"               = "connectivity"
  }

  change_management_parameters = {
    change_requested_by = "Jamie Taffurelli"
    change_reason       = "Creating account for networking prod related resources"
  }

  account_customizations_name = ""
}

module "app-dev-01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "jamietaffurelli+aws-app-dev-01@jamietaffurelli.onmicrosoft.com"
    AccountName               = "app-dev-01"
    ManagedOrganizationalUnit = "App (ou-kh9q-yk1k9exh)"
    SSOUserEmail              = "jamietaffurelli+aws-app-dev-01@jamietaffurelli.onmicrosoft.com"
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
    "environment"         = "dev"
    "stack"               = "app"
  }

  change_management_parameters = {
    change_requested_by = "Jamie Taffurelli"
    change_reason       = "Creating account for app dev related resources"
  }

  account_customizations_name = ""
}

module "app-prod-01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "jamietaffurelli+aws-app-prod-01@jamietaffurelli.onmicrosoft.com"
    AccountName               = "app-prod-01"
    ManagedOrganizationalUnit = "App (ou-kh9q-yk1k9exh)"
    SSOUserEmail              = "jamietaffurelli+aws-app-prod-01@jamietaffurelli.onmicrosoft.com"
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
    "stack"               = "app"
  }

  change_management_parameters = {
    change_requested_by = "Jamie Taffurelli"
    change_reason       = "Creating account for app prod related resources"
  }

  account_customizations_name = ""
}*/
