resource "aws_route53_zone" "internal" {
  name = format("%s.internal.com", var.project_name)

  vpc {
    vpc_id = var.vpc_id
  }

}

resource "aws_route53_record" "wildcard" {
  name    = format("*.%s.internal.com", var.project_name)
  type    = "A"
  zone_id = aws_route53_zone.internal.zone_id

  alias {
    name                   = aws_internal.dns_name
    zone_id                = aws.lb.internal.zone_id
    evaluate_target_health = true
  }

}