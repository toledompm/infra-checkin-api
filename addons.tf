resource "heroku_addon" "production" {
  app  = heroku_app.production.name
  plan = "heroku-postgresql:hobby-dev"
}
