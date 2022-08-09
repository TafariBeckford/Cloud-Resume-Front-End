

# Route53 Configuration

data "aws_route53_zone" "test" {
  name         = "tafaribeckford.com"
  private_zone = false

}
resource "aws_route53_record" "www" {
  zone_id = data.aws_route53_zone.test.zone_id
  name    = "www.${var.domain_name}"
  type    = "A"


  alias {
    name                   = aws_cloudfront_distribution.dist.domain_name
    zone_id                = aws_cloudfront_distribution.dist.hosted_zone_id
    evaluate_target_health = false
  }
}

resource "aws_route53_record" "root" {
  zone_id = data.aws_route53_zone.test.zone_id
  name    = var.domain_name
  type    = "A"


  alias {
    name                   = aws_cloudfront_distribution.dist.domain_name
    zone_id                = aws_cloudfront_distribution.dist.hosted_zone_id
    evaluate_target_health = false
  }
}