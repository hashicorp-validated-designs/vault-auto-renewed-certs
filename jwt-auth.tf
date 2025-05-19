# Enable JWT auth method
resource "vault_jwt_auth_backend" "jwt" {
  namespace   = vault_namespace.tenant_namespace.path_fq
  type        = "jwt"
  jwks_url    = var.jwt-auth-jwks-url
  jwks_ca_pem = var.jwt-auth-jwks-ca-pem
}

# Create JWT role
resource "vault_jwt_auth_backend_role" "my_app" {
  namespace       = vault_namespace.tenant_namespace.path_fq
  backend         = vault_jwt_auth_backend.jwt.path
  role_name       = "my-app"
  role_type       = "jwt"
  bound_audiences = ["https://kubernetes.default.svc"]
  user_claim      = "sub"
  bound_subject   = var.jwt-auth-service-account
  token_policies  = [vault_policy.pki.name]
  token_ttl       = 3600 # 1 hour in seconds
}

# Create entity alias
resource "vault_identity_entity_alias" "jwt_role" {
  namespace      = vault_namespace.tenant_namespace.path_fq
  name           = var.jwt-auth-service-account
  mount_accessor = vault_jwt_auth_backend.jwt.accessor
  canonical_id   = vault_identity_entity.my-app.id
}