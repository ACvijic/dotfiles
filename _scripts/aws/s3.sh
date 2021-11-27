#! bin/bash
aws s3 ls
aws s3 ls s3://my-bucket/myFolder/ --human-readable --summarize

#cp from -> to
# local -> S3
aws s3 cp /path/to/image.jpg s3://my-bucket/myFolder/image.jpg
# S3 -> local
aws s3 cp s3://my-bucket/myFolder/image.jpg ./test.jpg
--dryrun 
--recursive 
--exclude "*.php"

aws s3 mv /path/to/image.jpg s3://my-bucket/myFolder/image.jpg
aws s3 mv s3://my-bucket/myFolder/image.jpg ./test.jpg

aws s3 sync . s3://my-bucket/myFolder
--delete # deletes files/dirs on S3 not found locally
--exclude "*.jpg"
aws s3 sync s3://my-bucket/myFolder .
--exclude "*anotherFolder/"

aws s3 rm s3://my-bucket/myFolder/image.jpg
aws s3 rm s3://my-bucket/myFolder --recursive
--exclude "*.jpg"
