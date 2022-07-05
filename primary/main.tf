terraform {
  backend "remote" {
    organization = "km-org"
    workspaces {
      name = "terraform-course-repo"
    }
  }
}

resource "random_id" "random" {
  keepers = {
    uuid = uuid()
  }

  byte_length = 8
}

output "public_ip" {
  value = "8.8.8.8"
}

output "destination" {
  value = {
    "planet"   = "Mars"
    "distance" = "1234567890"
    "date"     = "11 Jan 2018"
  }
}

output "random" {
  value = random_id.random.hex
}
