data "openstack_networking_network_v2" "network" {
  network_id = "${var.network_id}"
}
