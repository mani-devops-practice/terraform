resource "aws_route53_record" "www" {
  for_each = aws_instance.example
  zone_id = var.route_53_zone_id
  name    = "${each.key}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [each.value.private_ip]
  allow_overwrite = true
}

# roboshop.manig.online

resource "aws_route53_record" "www1" {
  zone_id = var.route_53_zone_id
  name    = "roboshop.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [lookup(aws_instance.example, "frontend" ).public_ip]
}