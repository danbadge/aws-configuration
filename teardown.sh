aws cloudformation delete-stack --stack-name network-stack

S3_BUCKET=`aws s3api list-buckets | grep -Eo 'deployment.*[^"]'`
aws s3 rb s3://${S3_BUCKET} --force
aws cloudformation delete-stack --stack-name deployment-setup 