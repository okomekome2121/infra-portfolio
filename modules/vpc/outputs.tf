output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "availability_zones" {
  description = "List of availability zones"
  value       = var.availability_zones
}

output "vpc_name_tag" {
  description = "VP name tag"
  value = aws_vpc.vpc.tags["Name"]
}

output "gateway_id" {
  description = "Internet Gateway ID"
  value       = aws_internet_gateway.igw.id
}

output "route_table_id" {
  description = "Route Table ID"
  value       = aws_route_table.route.id
  
}

output "public_subnet_cidrs_id" {
  description = "List of public subnet IDs"
  value       = aws_subnet.public.cidr_block
}

output "private_subnet_cidrs_id" {
  description = "List of private subnet IDs"
  value       = aws_subnet.private.cidr_block
}

output "route_table_association_id" {
  description = "List of public subnet IDs"
  value       = aws_route_table_association.public1.id
}
