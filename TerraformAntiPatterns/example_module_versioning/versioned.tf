# If my modules weren't versioned, all my customers would get infra changes at the same time. How do I deal with that?

# 1.0.83 has some changes that I don't want in Prod until I've thoroughly tested them in Dev
module "dev1" {
  source = "git::git@github.com:stopthatastronaut/myfancymodule?ref=v1.0.83"

  cidr_block                = "10.15.0.0/16"
  environment               = "Dev"
  db_restore_from_snapshot  = true
  ecs_create_services_tasks = true
}

# Customer1 is not ready for the changes I introduced in 0.0.82, never mind those I made in 1.0.83
module "Customer1" {
  source = "git::git@github.com:stopthatastronaut/myfancymodule?ref=v1.0.81"

  cidr_block                = "10.16.0.0/16"
  environment               = "Prod-Customer1"
  db_restore_from_snapshot  = true
  ecs_create_services_tasks = true
}

# Customer2 is one of my "bleeding edge" clients, they're OK being the guinea pig for some changes in 1.0.82, as long as they've been well tested in dev
module "Customer2" {
  source = "git::git@github.com:stopthatastronaut/myfancymodule?ref=v1.0.82"

  cidr_block                = "10.17.0.0/16"
  environment               = "Prod-Customer2"
  db_restore_from_snapshot  = true
  ecs_create_services_tasks = true
}
