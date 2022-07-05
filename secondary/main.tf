terraform {}

data "terraform_remote_state" "primary" {
  backend = "remote"
  config = {
    organization = "km-org"
    workspaces = {
      name = "terraform-course-repo"
    }
  }
}

output "primary_public_ip" {
  value = "${data.terraform_remote_state.primary.public_ip}"
}

output "primary_destination" {
  value = "${data.terraform_remote_state.primary.destination}"
}
