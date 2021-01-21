---
title: StatusCake
tags: [integration, statuscake]
keywords: 
last_updated: 
summary: "Get alerts from StatusCake into Squadcast"
sidebar: mydoc_sidebar
permalink: docs/statuscake
folder: mydoc
---

Follow the steps below to configure a service so as to push related alert data from StatusCake onto Squadcast.

Squadcast will then process this information to create incidents for this service as per your preferences.

## Using StatusCake as an Alert Source

On the **Sidebar**, click on **Services**.

You can either choose to use existing service or [create a new service](adding-a-service-1)

Now, click on the corresponding **Alert Sources** button.

![](images/integration_1.png)

Select **StatusCake** from  **Alert Source** drop down and copy the Webhook URL shown.

![](images/statuscake_1.png)

## Create a Squadcast Webhook in StatusCake

1.Login to your StatusCake web console and under **Alerting** click **New Contact Group**

2.Enter the Group Name , paste StatusCake webhook url which you initially copied from Squadcast Dashboard ,select Webhook Method as **POST** and click Save

![](images/statuscake_2.png)

3.Add the Contact Group you just created to the tests for which you want to receive alerts on squadcast.

{{site.data.alerts.blue-note}}
<b>Supported Monitoring Alerts</b>
<br/><br/><p>Alerts from Uptime Monitoring, Page Speed Monitoring, SSL Monitoring, Virus Monitoring and Server Monitoring are currently supported</p>
{{site.data.alerts.end}}

Now whenever an event is triggered in StatusCake, an incident will be created automatically in Squadcast. And for **Uptime Monitoring** once the event that triggered the incident(s) is resolved in StatusCake, the relevant Squadcast incidents created would get resolved automatically.