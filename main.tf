provider"aws"{
    region ="ap-south-1"
}

resource "aws_instance" "my-aws_ec2_instance"{

    ami="ami-0f918f7e67a3323f0"
    instance_type="t2.micro"
    availability_zone="ap-south-1a"

}