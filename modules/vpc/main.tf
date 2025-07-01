resource "aws_vpc" "test" {
  cidr_block           = var.cidr_block
  name               = var.name

  # tags = {
  #   Name = "${var.name_prefix}-vpc"
  # }
}

resource "aws_internet_gateway" "test" {
  vpc_id = aws_vpc.test.id

  tags = {
    Name = "${var.name_prefix}-igw"
  }
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.test.id

  route {
    gateway_id = aws_internet_gateway.test.id
  }

  tags = {
    Name = "${var.name_prefix}-public-rt"
  }
}

# Public Subnet 1
resource "aws_subnet" "public1" {
  vpc_id                  = aws_vpc.test.id
  cidr_block              = var.public_subnet_cidrs[count.index]
  availability_zone       = var.availability_zones
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-1"
  }
}

# Public Subnet 2
resource "aws_subnet" "public2" {
  vpc_id                  = aws_vpc.test.id
  cidr_block              = var.private_subnet_cidrs[count.index]
  availability_zone       = var.availability_zones
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-2"
  }
}

resource "aws_route_table_association" "public1" {
  subnet_id      = aws_subnet.public1.id
  route_table_id = aws_route_table.public.id
}

