---
title: Sumo Logic
tags: [integration, sumo logic]
keywords: 
last_updated: 
summary: "Get alerts from Sumo Logic into Squadcast"
sidebar: mydoc_sidebar
permalink: docs/sumo-logic.html
folder: mydoc
---

Follow the steps below to configure a service so as to extract its related alert data from Sumo Logic.

Squadcast will then process this information to create incidents for this service as per your preferences.

## Using Sumo Logic as an Alert Source

On the **Sidebar**, click on **Services**.

You can either choose to use existing service or [create a new service](adding-a-service.html)

Now, click on the corresponding **Alert Sources** button.

![](images/integration_1.png)

Select **Sumo Logic** from  **Alert Source** drop down and copy the Webhook URL shown.

![](images/sumo_logic_1.png)

## Creating Squadcast Webhook in Sumo Logic

With Sumo Logic, the user will have to configure what the payload JSON will be.

So, for integrating with Squadcast, we have defined 2 different payload formats.

 +  Log Alerts
 +  Metric Alerts

So, we'll create 2 Webhook connections with different payload formats.

1.Login to your sumo logic dashboard and go to the **Settings** tab in the **Manage Data** section.

![](images/sumo_logic_2.png){: style="max-width: 70%" }

2.Select the **Connections** tab from the topbar.

![](images/sumo_logic_3.png)

3.Click on **+** button.

![](images/sumo_logic_4.png)

4.Select **Webhook** option.

5.Add the _Log Alerts_ webhook connection.

![](images/sumo_logic_5.png)

* Paste the webhook URL copied from the Squadcast dashboard in the URL field.

* In the payload field, past the following

```json
{
    "type": "log",
    "searchName": "{{SearchName}}",
    "searchDescription": "{{SearchDescription}}",
    "searchQuery": "{{SearchQuery}}",
    "searchQueryURL": "{{SearchQueryUrl}}",
    "timeRange": "{{TimeRange}}",
    "fireTime": "{{FireTime}}",
    "aggregateResultsJson": "{{AggregateResultsJson}}",
    "rawresultsJson": "{{RawResultsJson}}",
    "numRawResults": "{{NumRawResults}}"
}
```

6.Similarly, add _Metric Alerts_ webhook connection.

![](images/sumo_logic_6.png)

* Paste the same webhook URL copied from the Squadcast dashboard in the URL field.

* In the payload field, past the following

```json
{
    "type": "metric",
    "searchName": "{{SearchName}}",
    "searchDescription": "{{SearchDescription}}",
    "searchQuery": "{{SearchQuery}}",
    "searchQueryURL": "{{SearchQueryUrl}}",
    "timeRange": "{{TimeRange}}",
    "fireTime": "{{FireTime}}",
    "alertThreshold": "{{AlertThreshold}}",
    "alertSource": "{{AlertSource}}",
    "alertID": "{{AlertID}}",
    "alertStatus": "{{AlertStatus}}"
}
```

## Setting up Alerting for Logs

* Follow the article: [Schedule Searches for Webhook Connections](https://help.sumologic.com/Manage/Connections-and-Integrations/Webhook-Connections/Schedule-Searches-for-Webhook-Connections) for configuring alerts for logs.

![](images/sumo_logic_7.png)

* In the **Alert Type** drop-down, select **Webhook**.

* In the **Connection** drop-down, select **Squadcast Log Alerts**.

## Setting up Alerting for Metrics

* Refer the video: [Monitor your Metrics in Real-Time with Sumo Logic Alerts](https://www.youtube.com/watch?v=DfL7SetZ5dc) for configuring alerts for Metrics.

![](images/sumo_logic_8.png)

* In the **Send Notification Via** dropdown, select **Squadcast Metric Alerts**.

Now, whenever the webhook is triggered for either Log/Metric, an incident is autmatically created in Squadcast. But, the resolving of incident needs to be done manually by going to Squadcast dashboard.