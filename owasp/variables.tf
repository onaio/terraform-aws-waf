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

