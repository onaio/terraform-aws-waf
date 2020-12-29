variable "allowed_country_codes" {
  type        = list(string)
  description = "List of country codes the waf should allow connections from."
}

variable "rule_name" {
  type        = string
  description = "List of country codes the waf should allow connections from."
}

variable "rule_group_name" {
  type        = string
  description = "List of country codes the waf should allow connections from."
}

variable "rule_group_description" {
  type        = string
  description = "List of country codes the waf should allow connections from."
}

variable "metric_name" {
  type        = string
  description = "List of country codes the waf should allow connections from."
}

variable "rule_group_action" {
  type        = string
  default     = "allow"
  description = "List of country codes the waf should allow connections from."
}
