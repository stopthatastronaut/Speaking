module "dev1" {
  source = "../modules/myfancymodule"

  cidr_block                = "10.15.0.0/16"
  environment               = "Dev"
  db_restore_from_snapshot  = true
  ecs_create_services_tasks = true
}

module "Customer1" {
  source = "../modules/myfancymodule"

  cidr_block                = "10.16.0.0/16"
  environment               = "Prod-Customer1"
  db_restore_from_snapshot  = true
  ecs_create_services_tasks = true
}

module "Customer2" {
  source = "../modules/myfancymodule"

  cidr_block                = "10.17.0.0/16"
  environment               = "Prod-Customer2"
  db_restore_from_snapshot  = true
  ecs_create_services_tasks = true
}

