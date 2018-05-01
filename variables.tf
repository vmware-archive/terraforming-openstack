variable "env_name" {
  type        = "string"
  description = "The environment name."
  default     = ""
}

variable "project" {
  type        = "string"
  description = "The name of the tenant (Identity v2) or project (Identity v3) to login with."
}

variable "username" {
  type        = "string"
  description = "The username to login with."
}

variable "password" {
  type        = "string"
  description = "The password to login with."
}

variable "region" {
  type        = "string"
  description = "The region of the OpenStack cloud to use."
}

variable "auth_url" {
  type        = "string"
  description = "The identity authentication url."
}

variable "domain" {
  type        = "string"
  description = "The name of the domain to scope to (Identity v3)."
}

variable "key" {
  type        = "string"
  description = "The client private key file for SSL client authentication."
}

variable "network_id" {
  type        = "string"
  description = "The ID of an external network."
}

variable "internal_cidr" {
  type        = "string"
  description = "CIDR representing IP range for the subnet."
}
