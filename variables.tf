variable "kms_ciphertext_lookup" {
  description = <<EOT
Map of kms_ciphertext_lookup, attributes below
Required:
    - key_id
    - plaintext
Optional:
    - context
    - region
EOT

  type = map(object({
    key_id    = string
    plaintext = string
    context   = optional(map(string))
    region    = optional(string)
  }))
}

