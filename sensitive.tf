# variable "password1" {
#     sensitive = true
#     default = "nayana_d"
# }


resource "local_sensitive_file" "file_1" {
    content = "nayana_d"
    filename = "passwd1.txt"
}

output "pass" {
    value = local_sensitive_file.file_1.content
    sensitive = true
}
