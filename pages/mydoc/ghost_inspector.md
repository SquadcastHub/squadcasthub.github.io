---
title: Ghost Inspector
tags: [integration, ghost inspector]
keywords: 
last_updated: 
summary: "Trigger a Squadcast Incident for any failed UI tests from Ghost Inspector"
sidebar: mydoc_sidebar
permalink: docs/ghost-inspector
folder: mydoc
---

Follow the steps below to configure a Ghost Inspector service so an alert can be triggered whenever a UI test fails. Squadcast will then process this information to create incidents for this service as per your preferences.

## Using Ghost Inspector as an Alert Source

**(1)** From the navigation bar on the left, select **Services**. Pick the applicable **Team** from the Team-picker on the top. Next, click on **Alert Sources** for the applicable Service

![](images/alert_source_1.png)

**(2)** Search for **Ghost Inspector** from the Alert Source drop-down and copy the Webhook URL

![](images/ghost_1.png)

{{site.data.alerts.yellow-note-i}}
<b>Important</b><br/><br/>
<p>For an Alert Source to turn active (indicated by a <b>green dot - Receiving alerts</b> against the name of the Alert Source in the drop-down), you can either generate a test alert or wait for a real-time alert to be generated by the Alert Source.</p>
<p>An Alert Source is active if there is a recorded incident via that Alert Source for the Service in the last 30 days.</p>
{{site.data.alerts.end}}

## Create a Squadcast Webhook in Ghost Inspector

![](images/ghost_2.png)

Select Notifications panel from the account settings.

![](images/ghost_3.png)

In the notifications window, under **Webhooks**, choose **Yes** for Enabled and add the webhook URL from above and make sure Frequency is selected as **Send once if the test fails, then once when it passes again**, so the alerts can be **Auto-Resolved** in Squadcast when the test passes again.

![](images/ghost_4.png)

Go to your test suite settings and select the Notifications tab and make sure webhooks has **Use Organizational settings** enabled.

![](images/ghost_5.png)

![](images/ghost_6.png)

Also, make sure that **Use Suite settings is enabled **for webhooks in individual test settings.

![](images/ghost_7.png)

![](images/ghost_8.png)

Alternatively, you can also choose to use different webhook URL's for different suites or tests and configure them to different services in Squadcast based on requirement.

The Ghost Inspector integration is good to go and if there are any failed UI tests, it will automatically trigger an incident in Squadcast and if the test passes again, the incident will get Auto-Resolved in Squadcast.