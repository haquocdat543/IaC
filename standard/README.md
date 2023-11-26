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
## 5. Output
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

## 6. Destroy
```
terraform destroy
```
Enter `yes` to destroy infrastructure
