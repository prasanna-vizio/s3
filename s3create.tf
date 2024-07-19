resource "aws_s3_bucket" "dev-scripts" {
  bucket = "${var.dev}-bucket-19072024-scripts"
}

resource "aws_s3_bucket" "dev-spark-ui-logs" {
    bucket = "${var.dev}-bucket-19072024-spark-ui-logs"
} 

resource "aws_s3_bucket" "dev-staging" {
  bucket = "${var.dev}-bucket-19072024-staging"
}

resource "aws_s3_bucket" "dev-temp" {
    bucket = "${var.dev}-bucket-19072024-temp"
} 

resource "aws_s3_bucket" "qa-scripts" {
  bucket = "${var.qa}-bucket-19072024-scripts"
}

resource "aws_s3_bucket" "qa-spark-ui-logs" {
    bucket = "${var.qa}-bucket-19072024-spark-ui-logs"
} 

resource "aws_s3_bucket" "qa-staging" {
  bucket = "${var.qa}-bucket-19072024-staging"
}

resource "aws_s3_bucket" "qa-temp" {
    bucket = "${var.qa}-bucket-19072024-temp"
} 

resource aws_s3_object "dev-scripts" {
  bucket = aws_s3_bucket.dev-scripts.bucket
  for_each = var.folders-files
  key    = each.key
  source = each.value
}

resource aws_s3_object "dev-spark-ui-logs" {
  bucket = aws_s3_bucket.dev-spark-ui-logs.bucket
  for_each = var.folders-files
  key    = each.key
  source = each.value
}

resource aws_s3_object "dev-staging" {
  bucket = aws_s3_bucket.dev-staging.bucket
  for_each = var.folders-files
  key    = each.key
  source = each.value
}

resource aws_s3_object "dev-temp" {
  bucket = aws_s3_bucket.dev-temp.bucket
  for_each = var.folders-files
  key    = each.key
  source = each.value
}


variable "folders-files" {
  type = map(string)
  default = {
  "folder1/f1test1.txt" = "./f1test1.txt"
  "folder2/f2test1.txt" = "./f2test1.txt"
  "folder2/f2test2.txt" = "./f2test2.txt"
  "folder3/"            = ""
  }
}



variable "qa" {
  default = "qa"
}

variable "dev" {
  default = "dev"
}


