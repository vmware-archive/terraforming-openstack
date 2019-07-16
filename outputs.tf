output "iaas" {
  value = "openstack"
}

output "internal_network_id" {
  value = "${openstack_networking_network_v2.internal.id}"
}

output "ops_man_floating_ip" {
  value = "${openstack_networking_floatingip_v2.ops_manager.address}"
}

output "ops_man_private_ip" {
  value = "${openstack_compute_instance_v2.ops_manager.network.0.fixed_ip_v4}"
}

output "optional_ops_man_floating_ip" {
  value = "${element(concat(openstack_networking_floatingip_v2.optional_ops_manager.*.address, list("")), 0)}"
}

output "optional_ops_man_private_ip" {
  value = "${element(concat(openstack_compute_instance_v2.optional_ops_manager.*.network.0.fixed_ip_v4, list("")), 0)}"
}

output "ha_proxy_floating_ip" {
  value = "${openstack_networking_floatingip_v2.ha_proxy.address}"
}
