---
title: AppSignal
tags: [set-up-your-profile, managing-all-users]
keywords: 
last_updated: 
datatable: 
summary: "Get alerts from AppSignal into Squadcast"
sidebar: mydoc_sidebar
permalink: docs/appsignal
folder: mydoc
---

Follow the steps below to configure AppSignal to send in alerts into Squadcast.

Squadcast will then process this information to create incidents for this service according to your preferences.

## Using AppSignal as an Alert Source

Click on the **Services** tab on the sidebar.

![](images/appsignal_0_0.png)

You can either choose to use an existing service or [create a new service](adding-a-service-1). 

Now, click on the corresponding **Alert Sources** button for the service.

![](images/appsignal_0.png)

Select **AppSignal** from **Alert Sources** drop-down and copy the Webhook URL.

![](images/appsignal_1.png)

## Create a Squadcast Webhook in AppSignal Dashboard

**(1)** Log in to your **AppSignal** web console and select the App you would create incidents for.

**(2)** From your App's Dashboard navigate to the **Notifications** settings under **App Settings**.

![](images/appsignal_2.png)

**(3)** Click on the **Add Integration** button and select the **Webhook** option from the bottom of the dropdown.

![](images/appsignal_3.png)

**(4)** Give the integration a name, select the types of event you would like to create incidents for, and paste the copied **Webhook URL** in the input field. 

![](images/appsignal_4.png)

**(5)** Click on the submit button to save your integration.

Now whenever a notification is triggered in AppSignal, an incident will automatically be created in Squadcast.