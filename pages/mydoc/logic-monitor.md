---
title: LogicMonitor
#tags: [Loggly, Logstash]
keywords: 
last_updated: 
summary: "Send alerts to Squadcast from LogicMonitor"
sidebar: mydoc_sidebar
permalink: docs/logic-monitor
folder: mydoc
---

This document will help you integrate LogicMonitor with Squadcast.
 
[LogicMonitor](https://www.logicmonitor.com/) is a fully-automated, cloud-based infrastructure monitoring platform for Enterprise IT and Managed Service Providers giving full-stack visibility into networks, cloud, servers with one unified view.
Route detailed monitoring alerts from LogicMonitor to the right users in Squadcast.

## How to integrate LogicMonitor with Squadcast

### In Squadcast: Using LogicMonitor as an Alert Source

**(1)** On the **Sidebar**, click on **Services**

![](images/integration_1-1.png)

**(2)** Select an existing Service or **Add service** 

![](images/integration_1-2.png)

**(3)** Click the corresponding **Alert Sources**

![](images/integration_1.png)

**(4)** Search for **LogicMonitor** from  the **Alert Source** drop-down menu and copy the webhook 

![](images/logic_monitor11.png)

### In LogicMonitor: Add a webhook for Squadcast

**(1)** From the dashboard, navigate to **Settings**

![](images/logic-monitor1.png)

**(2)** Select **Integrations** from the sidebar

![](images/logic-monitor2.png)

**(3)** Select **Add** to add the new endpoint

![](images/logic-monitor3.png)

**(4)** Select **Custom HTTP Delivery** since we want to configure a custom webhook

![](images/logic-monitor4.png)

- Give the integration a meaningul **Name**, such as, *Squadcast Webhook*
- Provide an *optional* **Description**
- You can either choose to **Use the same URL and data to notify on various alert activity** (one single Squadcast Service webhook) or **Use differents URLs or data formats to notify on various alert activity** (multiple Squadcast Services webhooks). Either of the options you choose, you can follow the steps below, as many times as required (per each webhook)
- Choose **Cleared** checkbox since this will enable **auto-resolution** for incidents in Squadcast
- **HTTP Method**: From the drop-down, choose **HTTP Post**. Do *not* enable/use Custom Headers
- In the **URL** field, first select **https://** from the drop-down on the left and paste the copied Squadcast webhook by removing the *https://* prefix from the URL
- Provide **Username** and **Password** if applicable

![](images/logic-monitor5.png)

- Within **Alert Data**, you can either manually specify all the data that your alert payload should contain or use the **Insert Token** drop-down to add data variables. Select **Raw**. Additionally, from the **Format** drop-down, select **Form Data**
- Do *not* enable the checkbox for **Include an ID provided in HTTP response when updating alert status**

**(5)** Click on **Test Alert Delivery**. This is will send a *Test* alert to Squadcast, triggering a *Test* incident. Verify this to ensure the integration is working as expected

**(6)** **Save** the integration configuration

![](images/logic-monitor6.png)

Find more details on how each of these parameters for **Custom HTTP Endpoints** can be configured [here](https://www.logicmonitor.com/support/alerts/integrations/custom-http-delivery)

**(7)** Select **Escalation Chains** from the sidebar. Either **Add** a new Escalation Chain or edit an existing one

![](images/logic-monitor7.png)

**(8)** Configure the *Squadcast Webhook* within your Escalation Chain and **Save** it

![](images/logic-monitor8.png)

Find more details on how each of these parameters for **Escalation Chains** can be configured [here](https://www.logicmonitor.com/support/alerts/alert-delivery/escalation-chains)

**(9)** Select **Alert Rules** from the sidebar from under **Alert Settings**. Either **Add** a new Alert Rule or edit an existing one

![](images/logic-monitor9.png)

**(10)** Fill in all the relevant details. *Enable* the checkbox **Send notification when alerts clear**. Choose the configured **Escalation Chain** from the drop-down and **Save** it

![](images/logic-monitor10.png)

Find more details on how each of these parameters for **Alert Rules** can be configured [here](https://www.logicmonitor.com/support/alerts/alert-delivery/alert-rules)

That is it, you are now good to go! Whenever an alert is triggered in LogicMonitor, an incident will be created automatically in Squadcast.

{{site.data.alerts.blue-note}}
<b>FAQ:</b>
<br/><br/><p>Q: If an alert gets resolved in LogicMonitor, does LogicMonitor send auto-resolve signals to Squadcast?<br/><br/>A: Yes, LogicMonitor sends auto-resolve signals to Squadcast.</p>
{{site.data.alerts.end}}