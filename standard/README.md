# Standard backend
This is a demonstration for setup up a standard backend using AWS
## 1. Components
* IAM Policy
* IAM Role
* S3 bucket
* Dynamodb table

## 2. Initialize
```
terraform init
```
## 3. Plan & Apply
```
terraform apply
```
Enter `yes` to create infrastructure
## 4. Variables input
```
var.project
  The project name to use for unique resource naming
  Enter a value: hqd
```
You can enter whatever you want
## 5 . Output
Output will be like this:
```
Apply complete! Resources: 12 added, 0 changed, 0 destroyed.
Outputs:
config = {
  "bucket" = "hqd-s3-backend"
  "dynamodb_table" = "hqd-s3-backend"
  "region" = "ap-northeast-1"
  "role_arn" = "arn:aws:iam::095368950515:role/HqdS3BackendRole"
}
[root@ip-172-31-33-169 standard]#
```
Save 4 values above to else where.
## 6. Test
Navigate to [scripts](https://github.com/haquocdat543/IaC/blob/main/scripts) or `IaC/scripts` and edit `main.tf`

```
terraform {
  backend "s3" {
    bucket         = "hqd-s3-backend"
    key            = test
    region         = "ap-northeast-1"
    encrypt        = true
    role_arn       = "arn:aws:iam::095368950515:role/HqdS3BackendRole"
    dynamodb_table = "hqd-s3-backend
  }
}
```

## 7. Destroy
```
terraform destroy
```
Enter `yes` to destroy infrastructure
