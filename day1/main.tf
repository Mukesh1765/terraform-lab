provider "local" {}

resource "local_file" "hello_file" {
  filename = "hello.txt"
  content  = var.message
}
