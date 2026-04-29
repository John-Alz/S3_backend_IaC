resource "aws_s3_bucket" "bucket" {
  bucket = var.backend_bucket_name

  tags = {
    Name        = "My backend bucket"
  }
}

resource "aws_dynamodb_table" "terraform_locks" {
  name           = var.dynamo_table_name
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

module "bucket_encrypt" {
  source = "./modules/s3_encrypted"
  bucket_name = var.modulo_bucket_name
}