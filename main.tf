terraform {
  backend "local" {
    path = "./terraform.tfstate"
  }
}

resource "local_file" "hello_world_function" {
	filename = "${path.module}/HelloWorld.py"
	content = <<EOF
def print_hello_world():
	print("${var.hello_world}")
EOF
}
