---
title: New Relic
tags: [integration, new relic]
keywords: 
last_updated: 
summary: "Send events to Squadcast from New Relic"
sidebar: mydoc_sidebar
permalink: docs/new-relic
folder: mydoc
---

This document will help you integrate New Relic with Squadcast.

[New Relic](https://newrelic.com/) is an observability platform built to help engineers create more perfect software. From monoliths to serverless, you can instrument everything, then analyze, troubleshoot, and optimize your entire software stack, all from one place.

Route detailed monitoring alerts from New Relic to the right users in Squadcast.

## How to integrate New Relic with Squadcast

### In Squadcast: Using New Relic as an Alert Source

**(1)** On the **Sidebar**, click on **Services**

![](images/integration_1-1.png)

**(2)** Select an existing Service or **Add service** 

![](images/integration_1-2.png)

**(3)** Click the corresponding **Alert Sources**

![](images/integration_1.png)

**(4)** Search for **New Relic** from  the **Alert Source** drop down menu and copy the Webhook URL

![](images/new_relic_1.png)

### In New Relic: Add a Squadcast Webhook

Log in to your New Relic account.

**(1)** From Home, navigate to **Alerts & AI** 

![](images/new_relic_2.png)

**(2)** Navigate to **Notification channels** tab and click on **New notification channel**

![](images/new_relic_3.png)

**(3)** Here:
- Select **channel type** as **Webhook**
- Enter the **Channel name** as **Squadcast**
- Paste the copied Webhook URL copied from Squadcast previously under **Base Url**
- Click on **Create channel**

![](images/new_relic_4.png)

**(4)** Now, you can add this **Notification Channel** to any Alert Policy you have created

That is it, your integration with New Relic is complete and you are good to go!

### Configuring Proactive Detection for Anomalies in New Relic

Log in to your New Relic account.

**(1)** From Home, hover over **Alerts & AI** and select **Settings**

![](images/new_relic_6.png)

**(2)** Click on **Settings** in the sidebar under **Proactive Detection** and click on **Add a configuration**

![](images/new_relic_7.png)

**(3)** Here:

- Give the configuration a **Name**
- Select your New Relic **Account**
- Choose the **Applications and Services** that need to be monitored

![](images/new_relic_8.png)

- Select the **Signals** that need to be monitored

![](images/new_relic_9.png)

- Select where you want to **receive notifications** 
    + Select **Webhook**
    + Paste previously copied Webhook from Squadcast under **URL**
    + In **Payload template** add the payload exactly as shown below:
    {% raw %}
    ```json
    {
        "alertClass": "anomaly_detection",
        "alertData": {{this}}
    }
    ```
    {% endraw %}
    + You can click on **Send test notification** to trigger an incident in Squadcast check if the integration works fine
    + **Save** the configuration

![](images/new_relic_10.png)

Now, every time there is an alert in New Relic, the alert will be sent to Squadcast and an incident will be triggered, notifying the right people. 

Similarly, when the alert gets resolved in New Relic, the corresponding incident will get **auto-resolved** in Squadcast as well.