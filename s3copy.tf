variable "source_bucket" {
  default = "testbucket-18072024-1"
}

variable "destination_bucket" {
  default = "testbucket-18072024-2"
}

variable "object_key" {
  default = "folders/test.txt"
}

# Copy the object from the source bucket to the destination bucket
resource "aws_s3_object_copy" "copy_object" {
  bucket        = var.destination_bucket
  key           = var.object_key
  source        = "${var.source_bucket}/${var.object_key}"
}
