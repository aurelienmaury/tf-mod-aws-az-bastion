output "public_ip" {
  value = "${aws_eip.bastion.public_ip}"
}

output "name" {
  value = "${var.name}"
}
