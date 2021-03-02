---
title: AWS Elastic Beanstalk via CloudWatch
#tags: [azure-monitor, buildkite]
keywords: 
last_updated: 
summary: "Send monitoring alerts to Squadcast from AWS Elastic Beanstalk via Amazon CloudWatch"
sidebar: mydoc_sidebar
permalink: docs/aws-elastic-beanstalk-via-cloudwatch
folder: mydoc
---

This document will help you integrate AWS Elastic Beanstalk with Squadcast.

[AWS Elastic Beanstalk](https://aws.amazon.com/elasticbeanstalk/) is an easy-to-use service for deploying and scaling web applications and services developed with Java, .NET, PHP, Node.js, Python, Ruby, Go, and Docker on familiar servers such as Apache, Nginx, Passenger and IIS.<br/>
Route detailed monitoring alerts from AWS Elastic Beanstalk via CloudWatch to the right users in Squadcast.

## How to integrate AWS Elastic Beanstalk with Squadcast using Amazon CloudWatch

### In Squadcast: Using Amazon CloudWatch as an Alert Source

**(1)** On the **Sidebar**, click on **Services**

![](images/integration_1-1.png)

**(2)** Select an existing Service or **Add Service** 

![](images/integration_1-2.png)

**(3)** Click the corresponding **Alert Sources**

![](images/integration_1.png)

**(4)** Select **Amazon CloudWatch** from  **Alert Source** drop-down and copy the Webhook URL shown

![](images/aws_1.png)

## Create a Squadcast Webhook in Amazon SNS

Log in to your AWS account and proceed to **Simple Notification Service - SNS**

**(1)** From the sidebar on the left, select **Topics**
![](images/aws_2_a.png)

**(2)** Click on **Create Topic**

![](images/aws_2_b.png)

Fill in the details as per your requirements and then click on **Create Topic**

![](images/aws_2_c.png)

**(3)** Now, click on **Create Subscription**

![](images/aws_3_a.png)

**(4)** Here, select the **Protocol** as **HTTPS** and under **Endpoint**, paste the previously copied Webhook URL from Squadcast

**Note**: Ensure that the **Raw Message Delivery** checkbox is **disabled**.

Finally, click on **Create Subscription** to create the subscription.

![](images/aws_3_b.png)

**(5)** The **Subscription ID** for this Subscription should immediately change from **PendingConfirmation** to **Confirmed**. Click on the *refresh button* to verify the same

![](images/aws_4_a.png)

## Configure Amazon CloudWatch within AWS Elastic Beanstalk

**(1)** In AWS Elastic Beanstalk, within your **Environment**, navigate to **Monitoring**

![](images/aws_elastic_1.png)

**(2)** Click on the **bell icon** on the graphs for which you want to create an Alarm and route alerts to Squadcast

![](images/aws_elastic_2.png)

**(3)** Configure the required parameters in the **Add Alarm** dialog box. In the **Notify** drop-down, select the **Subscription** that was previously created. Under **Notify when state changes to**, enable **OK** and **Alarm** checkboxes. Finally, click on **Add** to create the Alarm

![](images/aws_elastic_3.png)

That is it, you are now good to go! 

Whenever an Alarm is triggered in AWS Elastic Beanstalk, an incident will be automatically created in Squadcast. Whenever, an Alarm is resolved in AWS Elastic Beanstalk, the corresponding incident is **auto-resolved in Squadcast** as well.