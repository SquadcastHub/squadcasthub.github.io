---
title: Honeybadger
tags: [integration, honeybadger]
keywords: 
last_updated: 
summary: "Get alerts from Honeybadger into Squadcast"
sidebar: mydoc_sidebar
permalink: docs/honeybadger.html
folder: mydoc
---

Follow the steps below to configure a service so as to push related alert data from Honeybadger onto Squadcast.

Squadcast will then process this information to create incidents for this service as per your preferences.

## Using Honeybadger as an Alert Source

On the **Sidebar**, click on **Services**.

You can either choose to use existing service or [create a new service](adding-a-service.html)

Now, click on the corresponding **Alert Sources** button.

![](images/integration_1.png)

Select **HoneyBadger** from  **Alert Source** drop down and copy the Webhook URL shown.

![](images/honeybadger_1.png)

## Create a Squadcast Webhook in Honeybadger

1.Login to your Honeybadger web console and go to **Settings** tab of your project.

![](images/honeybadger_2.png)

2.Under **Settings**, click on the **Alerts & Integrations** tab in the sidebar. Under **Add a Project Integration**, select **WebHook**.

![](images/honeybadger_3.png)

3.You will now be directed to the **Set up WebHook** page. In the URL input field, paste the Honeybadger Webhook URL that you had initially copied from the Squadcast Dashboard.  

![](images/honeybadger_4.png)

4.Scroll down to set up the events that you want to trigger an alert for. The following image lists out the events that are supported in Squadcast.

![](images/honeybadger_5.png)

5.Configure the **Rate escalation** and **Notification throttling** sections as per your requirements.
6.Save these changes.

Now whenever an event is triggered in Honeybadger, an incident will be created automatically in Squadcast. And once the event that triggered the incident(s) is resolved in Honeybadger, the relevant Squadcast incidents created would get resolved automatically.