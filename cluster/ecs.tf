resource "aws_ecs_cluster" "main" {
  name = var.project_name


}

resource "aws_ecs_cluster_capacity_provider" "main" {
  cluster_name       = aws_ecs_cluster.main.name
  capacity_providers = var.capacity_providers

  default_capacity_provider_strategy {
    base               = 1
    weight             = 100
    capacity_providers = "FARGATE"
  }






}