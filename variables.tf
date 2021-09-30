variable "access_token" {
  description = "access_token"
  type        = string
  sensitive   = true
  default = "ya29.a0ARrdaM_v0peuacIhfwmUvKhYCCmkfBC382ptCm1qYp6-vccNxNw3EJDbN9Vki8z-J2LIi2VsxdVtsztY57R7zsbX8Usdz6O6R3B-HVZHjfKNXQ51gRBQFgeNtXlVvzKK4v8-jsFasOwEoQKleCq3Yl3eyWw2oeTNQjHx"
}

variable "service_account_id" {
  description = "service_account_id"
  type        = string
  default = "wells-fargo-sa"
}

variable "service_account_name" {
  description = "service_account_name"
  type        = string
  default = "Wells Fargo"
}

variable "zone" {
  description = "zone"
  type        = string
  default = "us-east1-b"
}

variable "compute_instance_name" {
  description = "compute_instance_name"
  type        = string
  default = "wells-fargo-ce"
}

variable "machine_type" {
  description = "machine_type"
  type        = string
  default = "n1-standard-4"
}

variable "machine_image" {
  description = "machine_image"
  type        = string
  default = "debian-cloud/debian-9"
}

variable "disk_encryption_key_raw" {
  description = "disk_encryption_key_raw"
  type        = string
  default = null
}

variable "kms_key_self_link" {
  description = "kms_key_self_link"
  type        = string
  #default = "projects/airline1-sabre-wolverine/locations/us-east1/keyRings/savita-keyring1/cryptoKeys/savita-key11"
  default = null
}

variable "project_id" {
  description = "project_id"
  type        = string
  default = "airline1-sabre-wolverine"
}