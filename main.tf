data "aws_kms_ciphertext" "kms_ciphertext_lookup" {
  for_each = var.kms_ciphertext_lookup

  key_id    = each.value.key_id
  plaintext = each.value.plaintext
  context   = each.value.context
  region    = each.value.region
}

