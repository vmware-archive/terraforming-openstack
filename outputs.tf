output "internal_network_id" {
  value = "${openstack_networking_network_v2.internal.id}"
}

output "ops_man_floating_ip" {
  value = "${openstack_networking_floatingip_v2.ops_man.address}"
}

output "ha_proxy_floating_ip" {
  value = "${openstack_networking_floatingip_v2.ha_proxy.address}"
}
