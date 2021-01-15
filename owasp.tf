resource "aws_wafv2_web_acl" "awsMangedRules" {
  count = var.apply_owasp_rules ? 1 : 0

  name        = var.owasp_web_acl_name
  description = var.owasp_web_acl_description
  scope       = var.owasp_web_acl_scope

  default_action {
    block {
    }
  }

  visibility_config {
    cloudwatch_metrics_enabled = true
    metric_name                = "WAF_Common_Protections"
    sampled_requests_enabled   = true
  }

  /**
  AWS Managed Common Rule
  The Core rule set (CRS) rule group contains rules that are generally applicable to web applications
  This provides protection against exploitation of a wide range of vulnerabilities, 
  including high risk and commonly occurring vulnerabilities described in OWASP publications
  WCU: 700  priority: 0
*/
  rule {
    name     = "AWSManagedRulesCommonRule"
    priority = 0
    override_action {
      count {}
    }
    statement {
      managed_rule_group_statement {
        name        = "AWSManagedRulesCommonRuleSet"
        vendor_name = "AWS"
      }
    }
    visibility_config {
      cloudwatch_metrics_enabled = true
      metric_name                = "AWSManagedRulesCommonRule"
      sampled_requests_enabled   = true
    }
  }

  /**
  AWS Managed Admin ProtectionRule
  Rules that allow you to block external access to exposed administrative pages
  Example patterns include sqlmanager.
  WCU: 100 priority: 4
*/
  rule {
    name     = "AWSManagedRulesAdminProtectionRule"
    priority = 4
    override_action {
      count {}
    }
    statement {
      managed_rule_group_statement {
        name        = "AWSManagedRulesAdminProtectionRuleSet"
        vendor_name = "AWS"
      }
    }
    visibility_config {
      cloudwatch_metrics_enabled = true
      metric_name                = "AWSManagedRulesAdminProtectionRule"
      sampled_requests_enabled   = true
    }
  }

  /**
  AWS Managed Known Bad Inputs
  Rules to block request patterns that are known to be invalid
  and are associated with exploitation or discovery of vulnerabilities
  WCU: 200 priority: 2
*/
  rule {
    name     = "AWSManagedRulesKnownBadInputsRule"
    priority = 2
    override_action {
      count {}
    }
    statement {
      managed_rule_group_statement {
        name        = "AWSManagedRulesKnownBadInputsRuleSet"
        vendor_name = "AWS"
      }
    }
    visibility_config {
      cloudwatch_metrics_enabled = true
      metric_name                = "AWSManagedRulesAdminProtectionRule"
      sampled_requests_enabled   = true
    }
  }

  /**
  AWS Managed SQLi
  Rules to block request patterns associated with exploitation of SQL databases, like SQL injection attacks
  WCU: 200 priority: 1
*/
  rule {
    name     = "AWSManagedRulesSQLiRule"
    priority = 1
    override_action {
      count {}
    }
    statement {
      managed_rule_group_statement {
        name        = "AWSManagedRulesSQLiRuleSet"
        vendor_name = "AWS"
      }
    }
    visibility_config {
      cloudwatch_metrics_enabled = true
      metric_name                = "AWSManagedRulesSQLiRule"
      sampled_requests_enabled   = true
    }
  }

  /**
  AWS Managed Linux Rules
  Rules to that block request patterns associated with the exploitation of vulnerabilities specific to Linux,
  including Linux-specific Local File Inclusion (LFI) attacks
  WCU: 100 priority: 3
*/
  rule {
    name     = "AWSManagedRulesLinuxRule"
    priority = 3
    override_action {
      count {}
    }
    statement {
      managed_rule_group_statement {
        name        = "AWSManagedRulesLinuxRuleSet"
        vendor_name = "AWS"
      }
    }
    visibility_config {
      cloudwatch_metrics_enabled = true
      metric_name                = "AWSManagedRulesLinuxRule"
      sampled_requests_enabled   = true
    }
  }

  /**
  AWS Managed AmazonIp Reputation List
  Rules that are based on Amazon internal threat intelligence,
  block IP addresses typically associated with bots or other threats. 
  Blocking these IP addresses can help mitigate bots and reduce the risk of a malicious 
  actor discovering a vulnerable application.
  WCU: 25 priority: 5
*/
  rule {
    name     = "AWSManagedRulesAmazonIpReputationList"
    priority = 5
    override_action {
      count {}
    }
    statement {
      managed_rule_group_statement {
        name        = "AWSManagedRulesAmazonIpReputationList"
        vendor_name = "AWS"
      }
    }
    visibility_config {
      cloudwatch_metrics_enabled = true
      metric_name                = "AWSManagedRulesAmazonIpReputationList"
      sampled_requests_enabled   = true
    }
  }

  /**
  AWS Managed Linux Rules
  Rules that block requests from services that allow the obfuscation of viewer identity.
  These include requests from VPNs, proxies, Tor nodes, and hosting providers (including AWS)
  WCU: 20 priority: 6
*/
  rule {
    name     = "AWSManagedRulesAnonymousIpList"
    priority = 6
    override_action {
      count {}
    }
    statement {
      managed_rule_group_statement {
        name        = "AWSManagedRulesAnonymousIpList"
        vendor_name = "AWS"
      }
    }
    visibility_config {
      cloudwatch_metrics_enabled = true
      metric_name                = "AWSManagedRulesAnonymousIpList"
      sampled_requests_enabled   = true
    }
  }
  tags = {
    OwnerList       = var.owasp_web_acl_owner
    EnvironmentList = var.owasp_web_acl_env
    ProjectList     = var.owasp_web_acl_project
    EndDate         = var.owasp_web_acl_end_date
  }
}

