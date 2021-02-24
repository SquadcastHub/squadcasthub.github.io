---
title: Rapid7 InsightIDR
tags: [integration, rapid7 insightidr]
keywords: 
last_updated: 
summary: "Get alerts from Rapid7 InsightIDR into Squadcast"
sidebar: mydoc_sidebar
permalink: docs/rapid7-insightidr
folder: mydoc
---

This document will help you integrate Rapid7 InsightIDR with Squadcast.

<a href="https://www.rapid7.com/products/insightidr/">Rapid7 InsightIDR</a> is your security center for incident detection and response, authentication monitoring, and endpoint visibility. InsightIDR identifies unauthorized access from external and internal threats and highlights suspicious activity so you don’t have to weed through thousands of data streams.

Route detailed monitoring alerts from Rapid7 InsightIDR to the right users in Squadcast.

## How to integrate Rapid7 InsightIDR with Squadcast

### In Squadcast: Using Rapid7 InsightIDR as an Alert Source

**(1)** On the **Sidebar**, click on **Services**

![](images/integration_1-1.png)

**(2)** Select an existing Service or **Add service** 

![](images/integration_1-2.png)

**(3)** Click the corresponding **Alert Sources**

![](images/integration_1.png)

**(4)** Search for **Rapid7InsightIDR** from  the **Alert Source** drop-down menu and copy the Webhook URL

![](images/rapid7_1.png)

### In Rapid7 InsightIDR: Create a Squadcast Webhook

#### Configure your <a href="https://docs.rapid7.com/insightidr/webhook/#section-how-to-configure-this-data-exporter">Universal Webhook Data Exporter</a>
**(1)** From your InsightIDR dashboard, select **Data Collection** on the left hand menu<br/>
**(2)** When the **Data Collection** page appears, click the **Setup Event Source** drop-down and choose **Add Event Source**<br/>
**(3)** From the **Security Data** section, click the **Data Exporter** icon<br/>
The **Add Event Source** panel appears<br/>
- Choose your **Collector** and select **Universal Webhook** for **Data Exporter**.  Give the Event Source a meaningful name
- Paste the previously copied Squadcast URL under **URL**
- If the secret is not already provided, enter in the **Secret** field
- There is no requirement by Squadcast to add any Additional Headers
- Enable the checkbox option **Alerts** under **Data Export Types**
- Click **Save**

![](images/rapid7_2.png)

That is it, you are good to go! Now, whenever there is an alert in the Rapid7 InsightIDR, an incident will be triggered in Squadcast for the same.

## FAQ

**Q:** If an alert gets resolved in Rapid7 InsightIDR, does it send auto-resolve signals to Squadcast?

**A:** No, Rapid7 InsightIDR does not send auto-resolve signals for resolved alerts to Squadcast. Hence, Squadcast incidents from Rapid7 InsightIDR should be resolved manually.