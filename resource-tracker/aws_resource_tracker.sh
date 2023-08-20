#!/bin/bash

########################
# Author: Akshay
# Date: 15th Aug 2023
#
# Version: v1
#
#Purpose: This script will report the AWS resource usage
#######################

#enter into debug mode - to check scripts for errors
set -x

#Things we're going to track: AWS S3, AWS EC2, AWS Lambda, AWS IAM Users
#list s3 buckets
echo "Print list of s3 buckets"
aws s3 ls > resourceTracker

#list EC2 instances
echo "Print list of EC2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resourceTracker

#list lambda functions
echo "Print list of lambda functions"
aws lambda list-functions >> resourceTracker

#list IAM users
echo "Print list of IAM users"
aws iam list-users >> resourceTracker