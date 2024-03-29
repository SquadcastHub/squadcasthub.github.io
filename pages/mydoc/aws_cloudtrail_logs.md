---
title: AWS CloudTrail Logs
tags: [integration, aws cloudtrail logs]
keywords:
last_updated:
summary: "Get CloudTrail log creation alerts into Squadcast using SNS endpoints"
sidebar: mydoc_sidebar
permalink: docs/aws-cloudtrail-logs
folder: mydoc
---

Please use this integration guide to configure CloudTrail log alerts so they can be received in Squadcast. This integration should be used only for getting CloudTrail log alerts via a SNS endpoint.

For CloudTrail alerts, use the [AWS CloudTrail via CloudWatch integration](aws-cloudtrail-via-cloudwatch).

For regular AWS CloudWatch alarms (like EC2 alerts), use the [AWS CloudWatch Integration](amazon-cloudwatch-aws).

## Using AWS CloudTrail Logs via SNS as an Alert Source

**(1)** From the navigation bar on the left, select **Services**. Pick the applicable **Team** from the Team-picker on the top. Next, click on **Alert Sources** for the applicable Service

![](images/alert_source_1.png)

**(2)** Search for **AWS CloudTrail Logs via SNS** from the Alert Source drop-down and copy the Webhook URL

![](images/cloudtrail_1.png)

{{site.data.alerts.yellow-note-i}}
<b>Important</b><br/><br/>
<p>For an Alert Source to turn active (indicated by a <b>green dot - Receiving alerts</b> against the name of the Alert Source in the drop-down), you can either generate a test alert or wait for a real-time alert to be generated by the Alert Source.</p>
<p>An Alert Source is active if there is a recorded incident via that Alert Source for the Service in the last 30 days.</p>
{{site.data.alerts.end}}

## Create CloudTrail logs Endpoint in AWS SNS

Now log in to your AWS account and proceed to SNS.

Click on "**Create topic**" to get "Create new topic" dialog box. Fill in the details as per your requirements and then click on "**Create topic**"

![](images/cloudtrail_2.png)

Now inside the topic, click on "**Create subscription**" to get "Create subscription" dialog box. Select the protocol as "**HTTPS**" and in the endpoint enter the URL you obtained from previous step. Finally, click on "**Create subscription**" to create the subscription.

![](images/cloudtrail_3.png)

The "**Subscription ID**" for the subscription should to "**Confirmed**" immediately change from "**PendingConfirmation**". Click on the refresh button to verify the same.

![](images/cloudtrail_4.png)

Then you can [configure your CloudTrail log alerts](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/configure-sns-notifications-for-cloudtrail.html) and assign this topic as the notification option and you are good to go.