resource "aws_vpc" "vpc" {
  cidr_block = var.vpc-cidr
}

resource "aws_subnet" "Public-sub-1" {
  cidr_block = var.public-subnet-1-cidr
  vpc_id = aws_vpc.vpc.id

}
resource "aws_subnet" "Public-sub-2" {
  cidr_block = var.public-subnet-2-cidr
  vpc_id = aws_vpc.vpc.id
}

resource "aws_internet_gateway" "IGW" {
  vpc_id = aws_vpc.vpc.id
}

resource "aws_route_table" "public-RT" {
  vpc_id = aws_vpc.vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.IGW.id
  }
}

resource "aws_route_table_association" "association-1" {
  route_table_id = aws_route_table.public-RT.id
  subnet_id = aws_subnet.Public-sub-1.id
}
resource "aws_route_table_association" "association-2" {
  route_table_id = aws_route_table.public-RT.id
  subnet_id = aws_subnet.Public-sub-2.id
}