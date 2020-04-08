terraform {
    backend "remote" {
        organization = "roy-trial"
    }
}

resource "null_resource" "run_2" {
    provisioner "local-exec" {
        command = "ps aux"
    }
}