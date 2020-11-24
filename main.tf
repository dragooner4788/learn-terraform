#Creating a Virtual Machine in AWS

terraform {
    required_version = "~> 0.13"
}

provider "aws"{
    region = "us-east-2"

    #Any version of 3.x Version of AWS
    version = "~> 2.0"

}

resource "aws_instance" "app" {
    instance_type = "t2.micro"
    availability_zone = "us-east-2a"
    ami = "ami-0c55b159cbfafe1f0"

    user_data = <<-EOF
                #!/bin/bash
                sudo service apache2 start
                EOF
}