resource "openstack_objectstorage_container_v1" "container" {
  region = "${var.region}"
  name   = "${var.project}-pcf"
}
