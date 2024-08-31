provider "aws" {
  region = "ap-south-1"
}

provider "vault" {
  address = "http://3.110.165.216:8200"
  skip_child_token = true

  auth_login {
    path = "auth/approle/login"

    parameters = {
      role_id = "ed919f6b-f794-9455-1696-d4ba35412b09"
      secret_id = "922e58aa-79c7-7434-5ba1-ccd18f7fb70f"
    }
  }
}

data "vault_kv_secret_v2" "example" {
  mount = "kv" // change it according to your mount
  name  = "test-secret" // change it according to your secret
}

resource "aws_instance" "my_instance" {
  ami           = "ami-0522ab6e1ddcc7055"
  instance_type = "t2.micro"

  tags = {
    
    Secret = data.vault_kv_secret_v2.example.data["username"]
  }
}