# Build code & release to the app
resource "heroku_build" "production" {
  app = heroku_app.production.name

  source {
    url     = "https://github.com/toledompm/checkin-api/archive/refs/tags/v0.0.0.tar.gz"
    version = "v0.0.0"
  }
}
