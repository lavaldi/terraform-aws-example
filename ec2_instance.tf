# Create a EC2
resource "aws_instance" "ec2_instance_example" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "${var.instance_type}"
  subnet_id     = "${data.aws_subnet.example.id}"
  tags = {
    Name = "lavaldi"
  }
}

