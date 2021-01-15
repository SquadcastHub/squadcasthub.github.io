---
title: Threat Stack
tags: [Sysdig-Monitor, Uptime-Robot]
keywords: 
last_updated: 
summary: "Send notifications to Squadcast from Threat Stack"
sidebar: mydoc_sidebar
permalink: docs/threat-stack.html
folder: mydoc
---

This document will help you integrate Threat Stack with Squadcast.

[Threat Stack](https://www.threatstack.com/) provides full stack cloud security observability and compliance for infrastructure and applications.
Route detailed events from Threat Stack to the right users in Squadcast.

## How to integrate Threat Stack with Squadcast

### In Squadcast: Using Datadog as an Alert Source

**(1)** On the **Sidebar**, click on **Services**.

![](images/integration_1-1.png)

**(2)** Select an existing Service or **Add service** 

![](images/integration_1-2.png)

**(3)** Click the corresponding **Alert Sources**

![](images/integration_1.png)

**(4)** Search for **Threat Stack** from  the **Alert Source** drop down menu and copy the webhook 

![](images/threat_stack_1.png)

### In Threat Stack: Create a Squadcast Webhook

**(1)** From the Home Page, go to **Settings**

![](images/threat_stack_2.png)

**(2)** Select the **Integrations** tab

![](images/threat_stack_3.png)

**(3)** Scroll below to **Webhook API**. Give it a **Name**, paste the Webhook URL copied from Squadcast under **URL** and pick **Alert Severity** from the drop down to suit your needs. Click on **Save**

![](images/threat_stack_4.png)

{{site.data.alerts.blue-note}}
<b>Pro Tip:</b>
<br/><br/><p>While choosing an option from the *Alert Severity* dropdown, in order to ensure all alerts reach Squadcast and you do not miss out on any by mistake, choose the option *Fire Webhook for all alerts*. This will ensure all alerts are reaching Squadcast.<br/><br/>Within Squadcast, you can choose how you want each of these alerts to be treated (i.e., you can choose to <a href="event-tagging.html">tag</a> and <a href="alert-routing.html">route</a> them to the right people based on severity, <a href="de-duplication-rules.html">deduplicate</a> or <a href="alert-suppression.html">suppress</a> them to control alert noise).</p>
{{site.data.alerts.end}}

That is it, you are good to go! Based on the "Alert Severity" value chosen while creating the Webhook, only notifications with those severity values would be created as incidents in Squadcast. You can then manually resolve incidents in Squadcast. 

{{site.data.alerts.yellow-note-i}}
<b>Things to Remember:</b>
<br/><br/><p>
<ol>
<li><b>Webhook Concurrency Limit</b><br/>
The Threat Stack Webhook API batches alerts by severity for an organization. The Webhook API pushes the batched alerts to the customer's webhook endpoint every 10 seconds.<br/><br/>
For example, you configure the Threat Stack Webhook API to only send you Severity 1 alerts. At 10:00:01 a.m., in the Threat Stack platform, you receive 15 alerts. Five are Severity 1 and ten are Severity 3. The Threat Stack Webhook API batches the five Severity 1 alerts and sends them to your receiving application at 10:00:10 a.m.</li>
<li><b>Configure Network Webhook Access</b><br/>
Ensure the following IP addresses are open in your firewall to allow the Threat Stack Webhook API to push alerts to the Squadcast Webhook:
<ul>
<li>52.20.173.142</li>
<li>54.173.79.87</li>
<li>54.174.225.119</li>
</ul>
</li>
</ol>
</p>
{{site.data.alerts.end}}

{{site.data.alerts.blue-note}}
<b>FAQ:</b>
<br/><br/><p>Q: Does this integration support auto-resolve of incidents in Squadcast?<br/><br/>
A: No, this integration does not support auto-resolve of incidents in Squadcast since Threat Stack does not send out alert resolve notifications via Webhook.</p>
{{site.data.alerts.end}}