
resource "aws_s3_bucket" "task-1" {
  bucket = "rsschool-devops-course-tasks-reconrus-task-1"
}

resource "aws_s3_bucket_ownership_controls" "task-1" {
  bucket = aws_s3_bucket.task-1.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "task-1" {
  depends_on = [aws_s3_bucket_ownership_controls.task-1]

  bucket = aws_s3_bucket.task-1.id
  acl    = "private"
}
