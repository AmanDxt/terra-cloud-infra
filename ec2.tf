resource "aws_instance" "web" {
    ami = "ami-0f918f7e67a3323f0"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.public[0].id
    tags = {
        Name = "web-server"
    }
}