resource "aws_service_discovery_private_dns_namespace" "main" {
  name = format("%s.discovery.com", var.project_name)

  vpc = var.vpc_id

}

resource "aws_service_discovery_private_dns_namespace" "service_connect" {
  name = format("%s.local", var.project_name)

  vpc = var.vpc_id

}