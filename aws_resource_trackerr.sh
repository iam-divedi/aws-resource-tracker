#!/bin/bash

#####################
# Author Name : Vivek Divedi
# Date: 25 July 2024
#
# Version: v1
#
# This script will report the AWS resource usage
#####################
set -x

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

# List S3 Buckets
echo "Print S3 list of buckets"
aws s3 ls>>Resource Tracker

# List EC2 Instances
echo "Print EC2 list of instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# List Lambda Functions
echo "Print list of Lambda functions"
aws lambda list-functions | jq '.Functions[].FunctionName'>> Resource tracker

# List IAM Users
echo "Print list of IAM users"
aws iam list-users | jq '.Users[].UserName'>>Resource Tracker

