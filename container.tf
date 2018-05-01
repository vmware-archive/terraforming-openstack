resource "openstack_objectstorage_container_v1" "container" {
  name   = "${var.project}-blobs-storage"
  region = "${var.region}"
}
