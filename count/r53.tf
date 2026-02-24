resource "aws_route53_record" "www" {
  count = 10
  zone_id = var.route_53_zone_id
  name    = "${var.instances_names[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.example[count.index].private_ip]
}


# roboshop.manig.online

resource "aws_route53_record" "www1" {
  zone_id = var.route_53_zone_id
  name    = "roboshop.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.example[index(var.instances_names, "frontend")].public_ip]
}