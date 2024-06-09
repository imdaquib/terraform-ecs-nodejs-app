
module "ECR_repo" {
  source = "./modules/ECR"
  ecr_repo_name = "my-nodejs-ecr-repo"
}


module "ECS_Cluster" {
  source = "./modules/ECS"

  nodejs_app_cluster_name = "nodejs-app-cluster"
  availability_zones =        ["us-east-1a", "us-east-1b", "us-east-1c"]

  nodejs_app_task_family = "nodejs-app-task"

  ecr_repo_url                 = module.ECR_repo.repository_url
  container_port               = 5000
      
  nodejs_app_task_name           = "nodejs-app-task"
  ecs_task_execution_role_name = "nodejs-app-task-execution-role"

  application_load_balancer_name = "nodejs-app-alb"
  target_group_name              = "nodejs-app-alb-tg"
  nodejs_app_service_name          = "nodejs-app-service"
}