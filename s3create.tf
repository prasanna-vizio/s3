resource "aws_s3_bucket" "my_bucket1" {
  bucket = "testbucket-18072024-1"
}

resource "aws_s3_bucket" "my_bucket2" {
    bucket = "testbucket-18072024-2"
} 

resource aws_s3_object "my_object" {
  bucket = aws_s3_bucket.my_bucket1.bucket
  key    = "folders/test.txt"
  source = "./test.txt"
}
