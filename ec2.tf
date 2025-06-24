resource "aws_instance" "web" {
    ami = "ami-0f918f7e67a3323f0"
    instance_type = "t2.micro"
    availability_zone = data.aws_availability_zones.available.names[0]
    subnet_id = aws_subnet.public[0].id
    tags = {
        Name = "web-server"
    }
}