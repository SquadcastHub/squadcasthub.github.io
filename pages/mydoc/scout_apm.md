---
title: Scout APM
tags: [integration, scout apm]
keywords: 
last_updated: 
summary: "Get Alerts from Scout APM into Squadcast"
sidebar: mydoc_sidebar
permalink: docs/scout-apm
folder: mydoc
---

Follow the steps below to configure a service so as to extract its related alert data from Scout APM. Squadcast will then process this information to create incidents for this service as per your preferences.

## Using Scout APM as an Alert Source

**(1)** From the navigation bar on the left, select **Services**. Pick the applicable **Team** from the Team-picker on the top. Next, click on **Alert Sources** for the applicable Service

![](images/alert_source_1.png)

**(2)** Search for **Scout APM** from the Alert Source drop-down and copy the Webhook URL

![](images/scout_1.png)

{{site.data.alerts.yellow-note-i}}
<b>Important</b><br/><br/>
<p>For an Alert Source to turn active (indicated by a <b>green dot - Receiving alerts</b> against the name of the Alert Source in the drop-down), you can either generate a test alert or wait for a real-time alert to be generated by the Alert Source.</p>
<p>An Alert Source is active if there is a recorded incident via that Alert Source for the Service in the last 30 days.</p>
{{site.data.alerts.end}}

## Create Squadcast Webhook in Scout APM

Go to your Scout APM dashboard and select Alerts & Notifications under the company name.

![](images/scout_2.png){: style="max-width: 30%;" }

Then click on **Notification channels** from the left menu.

![](images/scout_3.png)

Then click the **New Webhook** button.

![](images/scout_4.png)

Enter the **Name** of the webhook as **Squadcast webhook** and the **Webhook url** which you have obtained from the previous step and click the **Create Channel** button.

![](images/scout_5.png)

Then go to the **Notification Groups **and add **Squadcast webhook** to the **Default** notification group or create a new notification group and add to it.

![](images/scout_6.png)

Then you can add this **Notification channel **to an **Alert condition** and whenever the alert is fired, an incident will be created automatically in Squadcast.

![](images/scout_7.png)

The Scout APM integration comes with an **Auto-Resolve** feature, meaning that whenever the alerts gets resolved in Scout APM, the incident will automatically get resolved in Squadcast as well.