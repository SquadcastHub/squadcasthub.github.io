---
title: Bugsnag
tags: [azure-monitor, buildkite]
keywords: 
last_updated: 
summary: "Send error alerts to Squadcast from Bugsnag"
sidebar: mydoc_sidebar
permalink: docs/bugsnag
folder: mydoc
---

This document will help you integrate Bugsnag with Squadcast.

[Bugsnag](https://www.bugsnag.com/) is an error monitoring and reporting software with best-in-class functionality for mobile apps notifying users of bugs, errors & more.
Route detailed error alerts from Bugsnag to the right users in Squadcast.

## How to integrate Bugsnag with Squadcast

### In Squadcast: Using Bugsnag as an Alert Source

**(1)** On the **Sidebar**, click on **Services**.

![](images/integration_1-1.png)

**(2)** Select an existing Service or **Add service** 

![](images/integration_1-2.png)

**(3)** Click the corresponding **Alert Sources**

![](images/integration_1.png)

**(4)** Search for **Bugsnag** from  the **Alert Source** drop down menu and copy the webhook

![](images/bugsnag_1.png)

### In Bugsnag: Create a Squadcast webhook for error alerts

**(1)** In the app, within your **Project**, click on the **Settings** icon on the top right and select **Project Settings**

![](images/bugsnag_2.png)

**(2)** Scroll down a little to the **Integrations and email** section and select **Data forwarding**

![](images/bugsnag_3.png)

**(3)** Select **Webhook** to configure the custom webhook

![](images/bugsnag_4.png)

**(4)** Paste the Webhook URL copied from Squadcast under **Webhook URL**. Test the configuration by clicking on **Test**. This would generate a test error alert which would create a test incident in Squadcast

![](images/bugsnag_5.png)

**(5)** Once the integration is verified, click on **Save**. Verify that the newly configured webhook is listed under **Configured integrations**

![](images/bugsnag_6.png)

**(6)** Click on the Webhook to configure when you should be notified for errors by enabling different options in the **Notify me when** section. Here is [Bugsnag's documentation](https://docs.bugsnag.com/product/integrations/data-forwarding/webhook/) to understand what each of these settings mean and when you would be notified

{{site.data.alerts.blue-note}}
<b>Note:</b>
<br/><br/><p>Except for "This project has a spike in errors" and "This project has a new release", every other "Notify me when" type is supported.</p>
{{site.data.alerts.end}}

![](images/bugsnag_7.png)

That is it, you are now good to go! Whenever an error alert is triggered in Bugsnag, an incident will be automatically created in Squadcast based on your Notification rules in Bugsnag. Whenever, **an error is resolved in Bugsnag, the corresponding incident is auto-resolved in Squadcast as well.**