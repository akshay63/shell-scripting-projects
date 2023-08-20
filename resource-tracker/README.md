# AWS RESOURCE TRACKER

## ABOUT THE PROJECT:

It is a real time shell script project that most devOps engineers use as part of cloud infra. We track our resources because Organizations need to track the maintainance overhead and the costs associated with the resources.

**Concepts/Tools Used:** Shell Scripting, AWS CLI and Cron Jobs

**Scenario**: Suppose we need to create a cronjob to give report to our manager to show him the resources usages on every working day(like how many EC2 instances are active, how many S3 buckets are present, how many Lambda functions are there and IAM users count) @6pm.

**cronjob**:
`crontab -e
#input
#0 18 * * 1-5 aws_resource_tracker.sh`
