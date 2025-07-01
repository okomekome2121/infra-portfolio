output "vpc_id" {
  value = aws_vpc.test.id
}

output "name_prefix" {
  value = aws_vpc.test.tags["Name"]
}

output "public_subnet_ids" {
  value = [
    aws_subnet.public1.id,
    aws_subnet.public2.id
  ]
}