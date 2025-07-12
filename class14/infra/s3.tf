# i will have loggin bucket already creted form console

module "buckets" {
  for_each = local.s3_info

  source        = "./modules/s3"
  bucket_name   = "${var.environment}-${each.value.name}-${data.aws_caller_identity.current.account_id}"
  # if_versioning = each.value.if_versioning
  if_versioning = true
  if_encrypted  = each.value.if_encrypted
  kms_key_arn   = "arn:aws:kms:ap-south-1:879381241087:key/d44259c0-e424-443e-9b2f-40b0ffd68d3f"
  log_bucket    = var.logging_bucket
}