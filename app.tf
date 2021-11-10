resource "heroku_app" "production" {
  name   = var.heroku_app_name
  region = var.heroku_region

  stack = "container"
}
