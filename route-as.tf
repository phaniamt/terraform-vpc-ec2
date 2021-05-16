resource "aws_route_table_association" "route-as" {
  count          = length(var.subnet-cidr)
  subnet_id      = element(aws_subnet.subnet.*.id, count.index)
  route_table_id = aws_route_table.sonar-route.id
}
