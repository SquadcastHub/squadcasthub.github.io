---
title: Twilio
keywords: 
last_updated: 
summary: "Send events to Squadcast from Twilio"
sidebar: mydoc_sidebar
permalink: docs/twilio
folder: mydoc
---

This document will help you integrate Twilio with Squadcast.

[Twilio](https://twilio.com/) allows software developers to programmatically make and receive phone calls, send and receive text messages, and perform other communication functions using its web service APIs.

Route detailed events from Twilio to the right users in Squadcast.

## How to integrate Twilio with Squadcast

### In Squadcast: Using Twilio as an Alert Source

**(1)** From the navigation bar on the left, select **Services**. Pick the applicable **Team** from the Team-picker on the top. Next, click on **Alert Sources** for the applicable Service

![](images/alert_source_1.png)

**(2)** Search for **Twilio** from the Alert Source drop-down and copy the Webhook URL 

![](images/twilio_1.png)

{{site.data.alerts.yellow-note-i}}
<b>Important</b><br/><br/>
<p>For an Alert Source to turn active (indicated by a <b>green dot - Receiving alerts</b> against the name of the Alert Source in the drop-down), you can either generate a test alert or wait for a real-time alert to be generated by the Alert Source.</p>
<p>An Alert Source is active if there is a recorded incident via that Alert Source for the Service in the last 30 days.</p>
{{site.data.alerts.end}}

### In Twilio: Create a Squadcast Webhook

You can configure a webhook for a group or a project.

**(1)** Navigate to **Monitor > Logs > Errors > Webhooks & alerts** from the left panel of the page

![](images/twilio_2.png)

**(2)** Paste the previously copied Squadcast **Webhook URL** and click on **Save**

![](images/twilio_3.png)

This will create and complete the configuration of the webhook in your Twilio account.

That is it, you are good to go! Everytime an event with `Level: ERROR` or `Level: WARNING` occurs in Twilio, an incident would be created in Squadcast.

{{site.data.alerts.blue-note-md}}
**FAQ:**

Q: If an alert gets resolved in Twilio, does Twilio send auto-resolve signals to Squadcast?

A: No, Twilio does not send auto-resolve signals to Squadcast. Hence, Squadcast incidents from Twilio should be resolved manually once issues have been fixed.
{{site.data.alerts.end}}