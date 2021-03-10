variable "web_acl_name" {
  type        = string
  description = "The name that will identify this web ACL"
}

variable "web_acl_description" {
  type        = string
  description = "The description of the web ACL"
}

variable "web_acl_scope" {
  type        = string
  default     = "REGIONAL"
  description = "Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer"
}

variable "apply_geo_match_rules" {
  type        = bool
  default     = false
  description = "Whether to effect the geo-matching rules in the WAF."
}
variable "geo_match_allowed_country_codes" {
  type        = list(string)
  default     = []
  description = "List of country codes the waf should allow connections from"
}

variable "geo_match_rule_name" {
  type        = string
  default     = ""
  description = "The name that will identify the geo match rule"
}

variable "geo_match_rule_group_name" {
  type        = string
  default     = ""
  description = "The name that will identify the geo match rule group"
}

variable "geo_match_rule_group_description" {
  type        = string
  default     = ""
  description = "The description for the geo match rule group"
}

variable "geo_match_metric_name" {
  type        = string
  default     = ""
  description = "The name that will be used by Amazon CloudWatch for monitoring"
}

variable "rule_group_reference" {
  type        = string
  default     = "Geo match reference rule"
  description = "The name that will identify the rule refference in the Wen ACL"
}
