resource "aws_cloudfront_distribution" "distribution" {
  origin {
    domain_name = var.s3_domain
    origin_id   = var.s3_origin
    
    custom_origin_config {
      http_port = 443
      https_port = 443
      origin_protocol_policy = "https-only"
      origin_ssl_protocols = ["TLSv1.2"]
    }
  }

  origin {
    domain_name = var.api_domain
    origin_id   = var.api_origin
    
    custom_origin_config {
      http_port = 443
      https_port = 443
      origin_protocol_policy = "https-only"
      origin_ssl_protocols = ["TLSv1.2"]
    }
  }

  origin {
    domain_name = var.lb_domain
    origin_id   = var.lb_origin
    
    custom_origin_config {
      http_port = 443
      https_port = 443
      origin_protocol_policy = "https-only"
      origin_ssl_protocols = ["TLSv1.2"]
    }
  }

  enabled             = true
  is_ipv6_enabled     = true
 
  default_cache_behavior {
    allowed_methods  = var.allow_method
    cached_methods   = var.cache_method
    target_origin_id = var.s3_origin

    forwarded_values {
      query_string = false

      cookies {
        forward = "none"
      }
    }

    viewer_protocol_policy = "allow-all"
    min_ttl                = 0
    default_ttl            = 3600
    max_ttl                = 86400
  }

  tags = {
    CostCenter = "${terraform.workspace}"
    Environment = var.env
  }

   restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    cloudfront_default_certificate = true
  }

  depends_on = [ var.cdn_depens_on ]
}