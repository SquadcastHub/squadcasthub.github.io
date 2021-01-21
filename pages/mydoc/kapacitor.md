---
title: Kapacitor
tags: [Jira-Server-Alert-Source, LogDNA]
keywords: 
last_updated: 
summary: "Send alerts from to Squadcast from Kapacitor"
sidebar: mydoc_sidebar
permalink: docs/kapacitor
folder: mydoc
---

[Kapacitor](https://www.influxdata.com/time-series-platform/kapacitor/) is a real-time streaming data processing engine in the TICK stack. It can process both stream and batch data from InfluxDB, acting on this data in real-time via its programming language TICKscript.
Route detailed alerts from Kapacitor to the right users in Squadcast.

## How to integrate Kapacitor with Squadcast

### In Squadcast: Using Kapacitor as an Alert Source

**(1)** On the **Sidebar**, click on **Services**.

![](images/integration_1-1.png)

**(2)** Select an existing Service or **Add service** 

![](images/integration_1-2.png)

**(3)** Click the corresponding **Alert Sources**

![](images/integration_1.png)

**(4)** Search for **Kapacitor** from  the **Alert Source** drop down menu and copy the webhook

![](images/kapacitor_1.png)

### In Kapacitor: Setup a Squadcast Webhook

**Method 1: Configuring Squadcast Webhook through Chronograf**

**(1)** From your Chronograf account, hover over the *Alerts* icon in the side bar, and select *Manage Tasks*

![](images/kapacitor_2.png)

**(2)** You can either modify an existing *Alert Rule* or create one by selecting *Add Alert Rule*

![](images/kapacitor_3.png)

**(3)** Within the *Alert Rule Builder*, give the Alert Rule a *Name*, select *Alert Type*, *Time Series*, *Conditions*

Scroll further to *Alert Handlers*

(a) Select *post* from the drop down

![](images/kapacitor_4.png)

**(3)** (b) Paste the Webhook copied from Squadcast under *HTTP endpoint for POST request*

![](images/kapacitor_5.png)

**(4)** Click on *Save Rule*

**Method 2: Configure Squadcast Webhook in kapacitor.conf and use the endpoint in TICKscript** 

**(1)** Within kapacitor.conf, scroll to `[[httppost]]` and paste the following:

```
endpoint = "squadcast"
url = "<Copied_Webhook_URL_from_Squadcast"
headers = { Content-Type = "application/json" }
```

**(2)** Go to your TICKscript, within *alert* context, set up a [post call to the above configured endpoint](https://docs.influxdata.com/kapacitor/v1.5/event_handlers/post/#example-tickscript-using-a-pre-configured-endpoint)

{{site.data.alerts.blue-note}}
<b>Pro Tip:</b>
<br/><br/><p>In Mac OS, Kapacitor's configuration file is generally in <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">/usr/local/etc/kapacitor.conf</code> and in Linux machines, it generally is in <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">/etc/kapacitor.conf</code></p>
{{site.data.alerts.end}}

That is it, you are now good to go! 

Whenever an alert is generated in Kapacitor, an incident is triggered for it in Squadcast. When the alert recovers in Kapacitor, the corresponding incident will be **auto-resolved** in Squadcast as well.