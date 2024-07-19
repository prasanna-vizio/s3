# scripts
resource "aws_s3_object_copy" "copy_scripts" {
  for_each = toset(var.objects_to_copy_scripts)
  bucket        = var.destination_scripts
  key           = each.value
  source        = "${var.source_scripts}/${each.value}"
}
# spark-ui-logs
resource "aws_s3_object_copy" "copy_spark-ui-logs" {
  for_each = toset(var.objects_to_copy_spark-ui-logs)
  bucket        = var.destination_spark-ui-logs
  key           = each.value
  source        = "${var.source_spark-ui-logs}/${each.value}"
}

# staging
resource "aws_s3_object_copy" "copy_staging" {
  for_each = toset(var.objects_to_copy_staging)
  bucket        = var.destination_staging
  key           = each.value
  source        = "${var.source_staging}/${each.value}"
}

# temp
resource "aws_s3_object_copy" "copy_temp" {
  for_each = toset(var.objects_to_copy_temp)
  bucket        = var.destination_temp
  key           = each.value
  source        = "${var.source_temp}/${each.value}"
}
