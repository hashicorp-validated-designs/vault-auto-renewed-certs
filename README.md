# Use the Vault PKI secrets engine for automatic certificate renewal

This repository provides example Terraform configurations for setting up the PKI secrets engine in HashiCorp Vault.

<!-- BEGIN_TF_DOCS -->

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vault"></a> [vault](#provider\_vault) | n/a |

## Resources

| Name | Type |
|------|------|
| [vault_auth_backend.aws](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/auth_backend) | resource |
| [vault_aws_auth_backend_client.config](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/aws_auth_backend_client) | resource |
| [vault_aws_auth_backend_config_identity.aws](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/aws_auth_backend_config_identity) | resource |
| [vault_aws_auth_backend_role.my-app](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/aws_auth_backend_role) | resource |
| [vault_egp_policy.restrict-common-name](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/egp_policy) | resource |
| [vault_identity_entity.my-app](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/identity_entity) | resource |
| [vault_identity_entity_alias.aws_role](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/identity_entity_alias) | resource |
| [vault_identity_entity_alias.jwt_role](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/identity_entity_alias) | resource |
| [vault_jwt_auth_backend.jwt](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/jwt_auth_backend) | resource |
| [vault_jwt_auth_backend_role.my_app](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/jwt_auth_backend_role) | resource |
| [vault_managed_keys.tenant_issuing_ca](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/managed_keys) | resource |
| [vault_managed_keys.vault_signing_ca](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/managed_keys) | resource |
| [vault_mount.pki](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/mount) | resource |
| [vault_mount.tenant_issuing_ca](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/mount) | resource |
| [vault_namespace.tenant_namespace](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/namespace) | resource |
| [vault_pki_secret_backend_config_auto_tidy.pki_auto_tidy](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/pki_secret_backend_config_auto_tidy) | resource |
| [vault_pki_secret_backend_config_cluster.tenant_issuing_ca](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/pki_secret_backend_config_cluster) | resource |
| [vault_pki_secret_backend_config_cluster.vault_signing_ca](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/pki_secret_backend_config_cluster) | resource |
| [vault_pki_secret_backend_config_urls.tenant_issuing_ca](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/pki_secret_backend_config_urls) | resource |
| [vault_pki_secret_backend_config_urls.vault_signing_ca](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/pki_secret_backend_config_urls) | resource |
| [vault_pki_secret_backend_crl_config.crl_config](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/pki_secret_backend_crl_config) | resource |
| [vault_pki_secret_backend_intermediate_cert_request.tenant_issuing_ca](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/pki_secret_backend_intermediate_cert_request) | resource |
| [vault_pki_secret_backend_intermediate_set_signed.tenant_issuing_ca](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/pki_secret_backend_intermediate_set_signed) | resource |
| [vault_pki_secret_backend_role.team-a](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/pki_secret_backend_role) | resource |
| [vault_pki_secret_backend_root_cert.vault_signing_ca](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/pki_secret_backend_root_cert) | resource |
| [vault_pki_secret_backend_root_sign_intermediate.tenant_issuing_ca](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/pki_secret_backend_root_sign_intermediate) | resource |
| [vault_policy.pki](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws-auth-account-id"></a> [aws-auth-account-id](#input\_aws-auth-account-id) | n/a | `string` | n/a | yes |
| <a name="input_aws-auth-unique-id"></a> [aws-auth-unique-id](#input\_aws-auth-unique-id) | n/a | `string` | n/a | yes |
| <a name="input_jwt-auth-jwks-ca-pem"></a> [jwt-auth-jwks-ca-pem](#input\_jwt-auth-jwks-ca-pem) | n/a | `string` | n/a | yes |
| <a name="input_jwt-auth-jwks-url"></a> [jwt-auth-jwks-url](#input\_jwt-auth-jwks-url) | n/a | `string` | n/a | yes |
| <a name="input_jwt-auth-service-account"></a> [jwt-auth-service-account](#input\_jwt-auth-service-account) | n/a | `string` | n/a | yes |
| <a name="input_aws-auth-region"></a> [aws-auth-region](#input\_aws-auth-region) | n/a | `string` | `"eu-north-1"` | no |
| <a name="input_vault-parent-namespace"></a> [vault-parent-namespace](#input\_vault-parent-namespace) | n/a | `string` | `""` | no |
| <a name="input_vault-tenant-namespace"></a> [vault-tenant-namespace](#input\_vault-tenant-namespace) | n/a | `string` | `"tenant-1"` | no |
<!-- END_TF_DOCS -->
