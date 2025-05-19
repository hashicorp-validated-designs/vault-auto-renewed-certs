variable "vault-parent-namespace" {
  type    = string
  default = ""
}

variable "vault-tenant-namespace" {
  type    = string
  default = "tenant-1"
}

variable "aws-auth-region" {
  type    = string
  default = "eu-north-1"
}

variable "aws-auth-account-id" {
  type = string
}

variable "aws-auth-unique-id" {
  type = string
}

variable "jwt-auth-service-account" {
  type = string
}

variable "jwt-auth-jwks-url" {
  type = string
}

variable "jwt-auth-jwks-ca-pem" {
  type = string
}