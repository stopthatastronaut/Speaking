module "dev1" {
  source = "git::git@github.com:stopthatastronaut/myfancymodule?ref=v0.0.83"

  cidr_block                = "10.15.0.0/16"
  environment               = "Dev"
  db_restore_from_snapshot  = true
  ecs_create_services_tasks = true
}

module "Customer1" {
  source = "git::git@github.com:stopthatastronaut/myfancymodule?ref=v0.0.81"

  cidr_block                = "10.15.0.0/16"
  environment               = "Prod-Customer1"
  db_restore_from_snapshot  = true
  ecs_create_services_tasks = true
}

module "Customer2" {
  source = "git::git@github.com:stopthatastronaut/myfancymodule?ref=v0.0.82"

  cidr_block                = "10.15.0.0/16"
  environment               = "Prod-Customer2"
  db_restore_from_snapshot  = true
  ecs_create_services_tasks = true
}