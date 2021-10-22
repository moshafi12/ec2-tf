provider "aws" {
        region = "us-east-1"
        profile = "default"
}

resource "aws_instance" "vm" {
    ami = "ami-087c17d1fe0178315"
    subnet_id = "subnet-4fe02b71"
    instance_type = "t2.micro"
    tags = {
            Name = "mo-test-001"
    }
}