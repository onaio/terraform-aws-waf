variable "apply_owasp_rules" {
  type        = bool
  default     = true
  description = "Whether to effect the OWASP rules in the WAF."
}

variable "owasp_web_acl_name" {
  type        = string
  description = "The name that will identify this web ACL"
}

variable "owasp_web_acl_description" {
  type        = string
  description = "The description of the web ACL"
}

variable "owasp_web_acl_scope" {
  type        = string
  default     = "REGIONAL"
  description = "Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer"
}

variable "owasp_web_acl_owner" {}

variable "owasp_web_acl_env" {}

variable "owasp_web_acl_end_date" {}

variable "owasp_web_acl_project" {}

variable "apply_geo_match_rules" {
  type        = bool
  default     = false
  description = "Whether to effect the geo-matching rules in the WAF."
}
variable "geo_match_web_acl_name" {
  type        = string
  description = "The name that will identify this web ACL"
}

variable "geo_match_web_acl_description" {
  type        = string
  description = "The description of the web ACL"
}
variable "geo_match_web_acl_scope" {
  type        = string
  default     = "REGIONAL"
  description = "Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer"
}
variable "geo_match_allowed_country_codes" {
  type        = list(string)
  description = "List of country codes the waf should allow connections from"
}

variable "geo_match_rule_name" {
  type        = string
  description = "The name that will identify the geo match rule"
}

variable "geo_match_rule_group_name" {
  type        = string
  description = "The name that will identify the geo match rule group"
}

variable "geo_match_rule_group_description" {
  type        = string
  description = "The description for the geo match rule group"
}

variable "geo_match_metric_name" {
  type        = string
  description = "The name that will be used by Amazon CloudWatch for monitoring"
}
variable "geo_match_web_acl_owner" {}

variable "geo_match_web_acl_env" {}

variable "geo_match_web_acl_end_date" {}

variable "geo_match_web_acl_project" {}
