# Backend configuration
terraform {
  backend "s3" {
    bucket         = "bucketName"
    key            = "key"
    region         = "ap-northeast-1"
    encrypt        = "true"
    role_arn       = "roleArn"
    dynamodb_table = "table"
  }
}


