variable "production" {
  description = "Is that a production environment?"
  type        = bool
  default     = false
}

variable "environment" {
  default = "dev"
}

variable "region" {
  default = "us-east-1"
}
variable "name" {
  default = "component-name"
}