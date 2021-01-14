variable "geo_match_web_acl_name" {
  type        = string
  description = "List of country codes the waf should allow connections from."
}

variable "geo_match_web_acl_description" {
  type        = string
  description = "List of country codes the waf should allow connections from."
}
variable "geo_match_web_acl_scope" {
  type        = string
  default     = "REGIONAL"
  description = "List of country codes the waf should allow connections from."
}
variable "geo_match_allowed_country_codes" {
  type        = list(string)
  description = "List of country codes the waf should allow connections from."
}

variable "geo_match_rule_name" {
  type        = string
  description = "List of country codes the waf should allow connections from."
}

variable "geo_match_rule_group_name" {
  type        = string
  description = "List of country codes the waf should allow connections from."
}

variable "geo_match_rule_group_description" {
  type        = string
  description = "List of country codes the waf should allow connections from."
}

variable "geo_match_metric_name" {
  type        = string
  description = "List of country codes the waf should allow connections from."
}
variable "geo_match_web_acl_owner" {}

variable "geo_match_web_acl_env" {}

variable "geo_match_web_acl_end_date" {}

variable "geo_match_web_acl_project" {}

