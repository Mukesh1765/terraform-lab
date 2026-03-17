output "file_path" {
  description = "Path of the created file"
  value       = local_file.hello_file.filename
}
