resource "openstack_compute_secgroup_v2" "internal" {
  name        = "${var.project}"
  description = "${var.project} security group"
  region      = "${var.region}"

  rule {
    ip_protocol = "tcp"
    from_port   = "1"
    to_port     = "65535"
    cidr        = "0.0.0.0/0"
  }

  rule {
    ip_protocol = "udp"
    from_port   = "1"
    to_port     = "65535"
    cidr        = "0.0.0.0/0"
  }

  rule {
    ip_protocol = "icmp"
    from_port   = "-1"
    to_port     = "-1"
    cidr        = "0.0.0.0/0"
  }
}
