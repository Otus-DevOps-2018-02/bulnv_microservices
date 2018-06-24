variable project {
  description = "Project ID"
  default = "docker-202808"
}

variable region {
  description = "Region"
  default     = "europe-west1-c"
}

variable zone {
  description = "Region"
  default     = "europe-west1-c"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
  default = "~/.ssh/id_rsa.pub"
}

variable private_key_path {
  description = "private key location"
  default = "~/.ssh/id_rsa"
}
