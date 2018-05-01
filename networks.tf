data "openstack_networking_network_v2" "network" {
  network_id = "${var.network_id}"
}

resource "openstack_networking_network_v2" "internal" {
  name           = "${var.project}-net"
  region         = "${var.region}"
  admin_state_up = "true"
}

resource "openstack_networking_subnet_v2" "internal" {
  network_id = "${openstack_networking_network_v2.internal.id}"
  region     = "${var.region}"
  cidr       = "${var.internal_cidr}"
}

resource "openstack_networking_router_v2" "internal_router" {
  name                = "${var.project}-router"
  region              = "${var.region}"
  external_network_id = "${data.openstack_networking_network_v2.network.id}"
  admin_state_up      = "true"
  tenant_id           = "${var.project}"
}
