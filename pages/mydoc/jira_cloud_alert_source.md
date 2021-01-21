---
title: Jira Cloud Alert Source
tags: [integration, jira cloud]
keywords: 
last_updated: 
summary: "Get alerts from Jira Cloud into Squadcast"
sidebar: mydoc_sidebar
permalink: docs/jira-cloud-alert-source
folder: mydoc
---

## Pre-requisites
1.  A valid Squadcast cloud / On-Premise subscription 
2. A user account in JIRA Cloud with Administrator privileges

Follow the steps below to configure a service so as to push related alert data from Jira onto Squadcast.

Squadcast will then process this information to create incidents for this service as per your preferences.

## Using Jira as an Alert Source in Squadcast

On the **Sidebar**, click on **Services**.

You can either choose to use existing service or [create a new service](adding-a-service-1)

Now, click on the corresponding **Alert Sources** button.

![](images/integration_1.png)

Select **Jira Server** from  **Alert Source** drop down and copy the Webhook URL shown.

![](images/jira_cloud_1.png)

## Create a Squadcast Webhook in Jira Server

1.Login to Jira Cloud and go to **Settings** in left-side pannel.

![](images/jira_cloud_2.png)

2.Go to **System** under **Jira Settings**

![](images/jira_cloud_3.png)

3.Click on the **WebHook** tab under the **Advanced** Section.

![](images/jira_cloud_4.png)

4.Click on **Create a Webhook**.

![](images/jira_cloud_5.png)

5.Paste the **Jira Cloud Webhook URL** copied from Squadcast Dashboard in the **URL** field and check the  **created** And **updated** check boxes under issues. Click on **Create** to finally save the webhook.

![](images/jira_cloud_6.png)

Now whenever an issue goes to status-category with key **new** in Jira, an incident will be triggered in Squadcast . Also when that issue goes to status-category with key **done** in Jira, it will be resolved in Squadcast.