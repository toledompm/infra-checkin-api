# Launch the app's web process by scaling-up
resource "heroku_formation" "production" {
  app        = heroku_app.production.name
  type       = "web"
  quantity   = 1
  size       = "Standard-1x"
  depends_on = [heroku_build.production]
}

output "production_app_url" {
  value = "https://${heroku_app.production.name}.herokuapp.com"
}
