# How Does One Use This?

Please note that the master branch is generally *unstable*.
If you are looking for something "tested", please consume one
of our [releases](https://github.com/pivotal-cf/terraforming-openstack/releases).

## What Does This Do?

You will get a booted ops-manager VM plus some networking.

## Looking to setup a different IAAS?

- [aws](https://github.com/pivotal-cf/terraforming-aws)
- [azure](https://github.com/pivotal-cf/terraforming-azure)
- [gcp](https://github.com/pivotal-cf/terraforming-gcp)
- [vsphere](https://github.com/pivotal-cf/terraforming-vsphere)

## Prerequisites

You will need `terraform`:

```bash
brew update
brew install terraform
```

### Var File

Copy the stub content below into a file called `terraform.tfvars`
and put it in the root of this project.

These vars will be used when you run `terraform  apply`.

You should fill in the stub values with the correct content.

```hcl
env_name = ""
project = ""
username = ""
password = ""
region = ""
auth_url = ""
external_network_name = ""
internal_cidr = ""
ops_manager_image_url = ""
key = ""
keypair = <<KEY
-----BEGIN RSA PRIVATE KEY-----
-----END RSA PRIVATE KEY-----
KEY
```

### Var Details
- env_name: **(required)** An arbitrary unique name for namespacing resources.
- project: **(required)** The name of the tenant (Identity v2) or project (Identity v3) to login with.
- username: **(required)** The username to login with.
- password: **(required)** The password to login with.
- region: **(required)** The region of the OpenStack cloud to use.
- auth_url: **(required)** The identity authentication url.
- domain: **(optional)** The name of the domain to scope to (Identity v3). Defaults to `default`.
- external_network_name: **(required)** The name of the external network.
- internal_cidr: **(required)** CIDR representing the IP range for the subnet.
- flavor_name: **(optional)** The name of the desired flavor for the Ops Manager instance. Defaults to `m1.large`.
- ops_manager_image_url: **(required)** The url for the Pivotal Cloud Foundry Ops Manager image to boot the Ops Manager instance.
- key: **(required)** The contents of the client private key file for SSL client authentication.
- keypair: **(required)** The name of an existing key pair to put on the Ops Manager instance.

## Running

Note: please make sure you have created the `terraform.tfvars` file above as mentioned.

### Standing up environment

```bash
terraform init
terraform plan -out=plan
terraform apply plan
```

### Tearing down environment

```bash
terraform destroy
```
