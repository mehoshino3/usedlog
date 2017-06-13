#!/bin/sh -xeu

S3_BUCKET_NAME="zs-used-log"
echo S3_BUKET_NAME=${S3_BUCKET_NAME}

# mysql -u root -pazsazsazs -h dev-zs-1-ap-northeast-1c.ce4ksg12l5j5.ap-northeast-1.rds.amazonaws.com:3306 zs < sql/view_log.sql

# === deploy to S3 ===
touch test2.txt
echo deploy to S3
aws s3 sync --exact-timestamps . s3://${S3_BUCKET_NAME}
