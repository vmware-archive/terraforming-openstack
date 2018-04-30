provider "openstack" {
  tenant_name = "${var.project}"
  user_name   = "${var.username}"
  password    = "${var.password}"
  auth_url    = "${var.auth_url}"
  region      = "${var.region}"
  domain      = "${var.domain}"
  key         = "${var.key}"
}
