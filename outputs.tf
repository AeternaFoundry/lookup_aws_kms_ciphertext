output "kms_ciphertext_lookup_id" {
  description = "Map of id values across all kms_ciphertext_lookup, keyed the same as var.kms_ciphertext_lookup"
  value       = { for k, v in data.aws_kms_ciphertext.kms_ciphertext_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kms_ciphertext_lookup_ciphertext_blob" {
  description = "Map of ciphertext_blob values across all kms_ciphertext_lookup, keyed the same as var.kms_ciphertext_lookup"
  value       = { for k, v in data.aws_kms_ciphertext.kms_ciphertext_lookup : k => v.ciphertext_blob if v.ciphertext_blob != null && length(v.ciphertext_blob) > 0 }
}
output "kms_ciphertext_lookup_context" {
  description = "Map of context values across all kms_ciphertext_lookup, keyed the same as var.kms_ciphertext_lookup"
  value       = { for k, v in data.aws_kms_ciphertext.kms_ciphertext_lookup : k => v.context if v.context != null && length(v.context) > 0 }
}
output "kms_ciphertext_lookup_key_id" {
  description = "Map of key_id values across all kms_ciphertext_lookup, keyed the same as var.kms_ciphertext_lookup"
  value       = { for k, v in data.aws_kms_ciphertext.kms_ciphertext_lookup : k => v.key_id if v.key_id != null && length(v.key_id) > 0 }
}
output "kms_ciphertext_lookup_plaintext" {
  description = "Map of plaintext values across all kms_ciphertext_lookup, keyed the same as var.kms_ciphertext_lookup"
  value       = { for k, v in data.aws_kms_ciphertext.kms_ciphertext_lookup : k => v.plaintext if v.plaintext != null && length(v.plaintext) > 0 }
  sensitive   = true
}
output "kms_ciphertext_lookup_region" {
  description = "Map of region values across all kms_ciphertext_lookup, keyed the same as var.kms_ciphertext_lookup"
  value       = { for k, v in data.aws_kms_ciphertext.kms_ciphertext_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}

