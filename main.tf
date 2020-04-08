terraform {
    backend "remote" {
        organization = "roy-trial"
    }
}

resource "null_resource" "parallel_run" {
    provisioner "local-exec" {
        command = "ls -l; whoami; uname -a; sleep 10"
    }
}

resource "null_resource" "run_2" {
    provisioner "local-exec" {
        command = "ps aux"
    }
}