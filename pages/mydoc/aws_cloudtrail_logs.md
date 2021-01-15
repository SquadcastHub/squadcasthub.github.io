---
title: AWS CloudTrail Logs
tags: [integration, aws cloudtrail logs]
keywords:
last_updated:
summary: "Get CloudTrail log creation alerts into Squadcast using SNS endpoints"
sidebar: mydoc_sidebar
permalink: docs/aws-cloudtrail-logs.html
folder: mydoc
---

Please use this integration guide to configure CloudTrail log alerts so they can be received in Squadcast. This integration should be used only for getting CloudTrail log alerts via a SNS endpoint.

For CloudTrail alerts, use the [AWS CloudTrail via CloudWatch integration](aws-cloudtrail-via-cloudwatch.html).

For regular AWS CloudWatch alarms (like EC2 alerts), use the [AWS CloudWatch Integration](amazon-cloudwatch-aws.html).

## Using AWS CloudTrail Logs via SNS as an Alert Source

On the **Sidebar**, click on **Services**.

You can either choose to use existing service or [create a new service](adding-a-service-1.html)

Now, click on the corresponding **Alert Sources** button.

![](images/integration_1.png)

Select **AWS CloudTrail Logs via SNS** from  **Alert Source** drop down and copy the Webhook URL shown.

![](images/cloudtrail_1.png)

## Create CloudTrail logs Endpoint in AWS SNS

Now log in to your AWS account and proceed to SNS.

Click on "**Create topic**" to get "Create new topic" dialog box. Fill in the details as per your requirements and then click on "**Create topic**"

![](images/cloudtrail_2.png)

Now inside the topic, click on "**Create subscription**" to get "Create subscription" dialog box. Select the protocol as "**HTTPS**" and in the endpoint enter the URL you obtained from previous step. Finally, click on "**Create subscription**" to create the subscription.

![](images/cloudtrail_3.png)

The "**Subscription ID**" for the subscription should to "**Confirmed**" immediately change from "**PendingConfirmation**". Click on the refresh button to verify the same.

![](images/cloudtrail_4.png)

Then you can [configure your CloudTrail log alerts](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/configure-sns-notifications-for-cloudtrail.html) and assign this topic as the notification option and you are good to go.