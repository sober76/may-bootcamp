# pull dns public xzone data
data "aws_route53_zone" "main" {
  name         = var.app_domain
  private_zone = false
}
# map domain/subdomain with ALB

# # Create the DNS record for the application
resource "aws_route53_record" "app" {
  zone_id = data.aws_route53_zone.main.zone_id
  name    = data.aws_route53_zone.main.name
  type    = "A"

  alias {
    name                   = aws_lb.alb.dns_name
    zone_id                = aws_lb.alb.zone_id
    evaluate_target_health = true
  }
}