output "vpc_id" {
  value = aws_vpc.vpc.id
}


output "public_subnets_id" {
  value = ["${aws_subnet.public_subnet.*.id}"]
}

output "private_subnets_id" {
  value = ["${aws_subnet.private_subnet.*.id}"]
}


output "private_default_sg_id" {
  value = aws_security_group.private_default.id
}

output "public_default_sg_id" {
  value = aws_security_group.public_default.id
}


output "private_security_groups_ids" {
  value = ["${aws_security_group.private_default.id}"]
}

output "public_security_groups_ids" {
  value = ["${aws_security_group.public_default.id}"]
}
