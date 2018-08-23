provider "openstack" {
  tenant_name = "${var.project}"
  user_name   = "${var.username}"
  password    = "${var.password}"
  auth_url    = "${var.auth_url}"
  region      = "${var.region}"
  key         = "${var.key}"
  domain_name = "${var.domain}"
}

terraform {
  required_version = "< 0.12.0"
}
