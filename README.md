# Terraform module to create SSL Certificates

This module creates a SSL wildcard certificates for each AWS region.

## Deploying

- Create `terraform.tfvars` file

```hcl
admin_email = "awesomeuser@awesomedomain.com"
regions     = (["us-east-1", "us-east-2", "us-west-1", "us-west-2"])
zone_name   = "aws.awesomedomain.com"
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.15 |
| acme | >= 2.0 |

## Providers

| Name | Version |
|------|---------|
| acme | 2.5.3 |
| tls | 3.1.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [acme_certificate.tls](https://registry.terraform.io/providers/vancluever/acme/latest/docs/resources/certificate) | resource |
| [acme_registration.tls](https://registry.terraform.io/providers/vancluever/acme/latest/docs/resources/registration) | resource |
| [tls_private_key.acme](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| admin-email | Email for Let's Encrypt registration | `string` | n/a | yes |
| regions | String set of region names | `set(string)` | n/a | yes |
| zone-name | Your public DNS Zone | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| regional-tls-certs | Set of Regional SSL Cert objects |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
