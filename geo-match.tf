resource "aws_wafv2_web_acl" "customGeoMatchRules" {
  count = var.apply_geo_match_rules ? 1 : 0

  name        = var.geo_match_web_acl_name
  description = var.geo_match_web_acl_description
  scope       = var.geo_match_web_acl_scope

  default_action {
    block {
    }
  }

  visibility_config {
    cloudwatch_metrics_enabled = true
    metric_name                = "WAF_Common_Protections"
    sampled_requests_enabled   = true
  }

  rule {
    name     = var.geo_match_rule_name
    priority = 0

    action {
      count {}
    }

    statement {
      geo_match_statement {
        country_codes = var.geo_match_allowed_country_codes
      }
    }

    visibility_config {
      cloudwatch_metrics_enabled = false
      metric_name                = var.geo_match_metric_name
      sampled_requests_enabled   = false
    }
  }

  tags = {
    OwnerList       = var.geo_match_web_acl_owner
    EnvironmentList = var.geo_match_web_acl_env
    ProjectList     = var.geo_match_web_acl_project
    EndDate         = var.geo_match_web_acl_end_date
  }
}

