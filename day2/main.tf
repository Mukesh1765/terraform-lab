provider "local" {}

resource "local_file" "env_file" {
  filename = var.filename
  content  = var.message
}
