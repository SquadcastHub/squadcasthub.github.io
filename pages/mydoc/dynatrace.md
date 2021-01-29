---
title: Dynatrace
tags: [set-up-your-profile, managing-all-users]
keywords: 
last_updated: 
datatable: 
summary: "Send in your problem notifications from Dynatrace into Squadcast"
sidebar: mydoc_sidebar
permalink: docs/dynatrace
folder: mydoc
---

Follow the steps below to configure Dynatrace to send in alerts into Squadcast.

Squadcast will then process this information to create incidents for this service according to your preferences.

## Using Dynatrace as an Alert Source

Click on the **Services** tab on the sidebar.

![](images/appsignal_0_0.png)

You can either choose to use an existing service or [create a new service](adding-a-service-1). 

Now, click on the corresponding **Alert Sources** button for the service.

![](images/appsignal_0.png)

Select **Dynatrace** from **Alert Sources** drop-down and copy the Webhook URL.

![](images/dynatrace_1.png)

## Create a Squadcast Webhook in Dynatrace Dashboard

**(1)** Log in to your **Dynatrace** web console, then navigate to Dynatrace > Settings > Integration > Problem notifications

**(2)** Click **Set up notifications** and select **Custom Integration**, as shown below.

![](images/dynatrace_2.png)

**(3)** Enter a **Name** and the **Webhook URL** that was copied from the Squadcast Services page to notify users when an issue occurs with the Webhook notification.

![](images/dynatrace_3.png)

**(4)** Next, to create a payload, that is to be sent to Squadcast via the Squadcast webhook,  insert the following JSON payload in the **Custom payload** section as shown below.

```json
{
  "State": "{State}",
  "ProblemID": "{ProblemID}",
  "PID": "{PID}",
  "ProblemTitle": "{ProblemTitle}",
  "ImpactedEntity": "{ImpactedEntity}",
  "ImpactedEntities": {ImpactedEntities},
  "ProblemDetailsText": "{ProblemDetailsText}",
  "ProblemSeverity": "{ProblemSeverity"},
  "ProblemURL": "{ProblemURL}"
}
```

More information about the JSON fields can be found in the list of **Available placeholders**

![](images/dynatrace_4.png)

**(5)** After configuring the payload, select your **Alerting profile**, click on **Send test notification** to send a test notification to the webhook URL to confirm if the integration works properly, and then click on **Save** to save the integration.

![](images/dynatrace_5.png)

Now whenever an alert notification is triggered in Dynatrace, an incident will automatically be created in Squadcast. Also when an alert is resolved in Dynatrace, the corresponding incident gets **auto-resolved** in Squadcast.