resource "aws_instance" "bastion" {

  ami = "${var.ami_id}"
  instance_type = "${var.instance_type}"
  key_name = "${var.keypair}"
  subnet_id = "${var.subnet_id}"
  security_groups = ["${split(',', var.security_groups}"]

  tags {
    Name = "Bastion ${var.name}"
  }
}

resource "aws_eip" "bastion" {
  instance = "${aws_instance.bastion.id}"
  vpc = true
}
