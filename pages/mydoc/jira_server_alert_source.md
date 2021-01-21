---
title: Jira Server Alert Source
tags: [integration, jira server]
keywords: 
last_updated: 
summary: "Get alerts from Jira Server into Squadcast"
sidebar: mydoc_sidebar
permalink: docs/jira-server-alert-source
folder: mydoc
---

## Pre-requisites
1.  A valid Squadcast cloud / On-Premise subscription 
2. A user account in JIRA Server with Administrator privileges

Follow the steps below to configure a service so as to push related alert data from Jira onto Squadcast.

Squadcast will then process this information to create incidents for this service as per your preferences.

## Using Jira as an Alert Source in Squadcast

On the **Sidebar**, click on **Services**.

You can either choose to use existing service or [create a new service](adding-a-service-1)

Now, click on the corresponding **Alert Sources** button.

![](images/integration_1.png)

Select **Jira Server** from  **Alert Source** drop down and copy the Webhook URL shown.

![](images/jira_server_1.png)

## Create a Squadcast Webhook in Jira Server

1.Login to Jira Server and go to **Settings** then **Webhook**

![](images/jira_server_2.png)

2.Click on **Create a Webhook** . Paste the **Jira Server** webhook url you copied from squadcast and check the  **created** And **updated** check boxes under issues.

![](images/jira_server_3.png)

3.Click **Create** .

![](images/jira_server_4.png)

Now whenever an issue goes to **To Do** status in Jira an incident will be triggered in Squadcast . Also when that issue goes to **Done** status in Jira it will be resolved in Squadcast.