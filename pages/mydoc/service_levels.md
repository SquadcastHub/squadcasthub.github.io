---
title: Service Levels (Deprecated)
keywords:
last_updated:
tags: [service levels]
summary: "Track SLIs and match them against the SLOs to improve SRE"
sidebar: mydoc_sidebar
permalink: docs/service-levels
folder: mydoc
---

{{site.data.alerts.red-note}}
<b>Feature Deprecated</b>
<br/><br/><p>This feature has been deprecated for public access and is currently in private beta</p>
{{site.data.alerts.end}}

For each Squadcast service, you can set Service Level Objectives (SLOs) to measure the Service Level Indicators (SLIs) and monitor SLO breaches to improve SRE of your organization.

{{site.data.alerts.blue-note}}
<b>Important Note:</b>
<br/><br/><p>In order to enable service levels, you need to integrate our DEX SDKs into your service.</p>
{{site.data.alerts.end}}

To enable these service levels for a service, click the 3 dots icon for the service and select **Service Levels**.

![](images/service_levels_1.png)

In the Service levels, add a group name and select the DEX SDK for your service and check the checkboxes for the corresponding SLIs like Latency, Memory and Status code. Right now, DEX is only available for **Golang** and **NodeJS** and we are working to add more technologies.

{{site.data.alerts.blue-note}}
<b>DEX SDK Links:</b>
<br/><br/><p>DEX SDK for Golang: <a href="https://github.com/squadcastHQ/dex-go" target="_blank">https://github.com/squadcastHQ/dex-go</a>
<br/>DEX SDK for NodeJS: <a href="https://github.com/squadcastHQ/dex-node" target="_blank">https://github.com/squadcastHQ/dex-node</a></p>
{{site.data.alerts.end}}

![](images/service_levels_2.png)

Copy the generated DEX API key and configure the DEX SDK in your service.

You can select the checkboxes to enable any of the Available SLIs such as Latency, Memory and Status code and configure the SLOs and save it.

![](images/service_levels_3.png)

Once configured, you can see the SLO status on the service directly with the help of green dot for healthy SLO and Red blinking dot for SLO Breach. 

![](images/service_levels_4.png)

You can view the live data by clicking on the red or green dot.

![](images/service_levels_5.png)

Also, whenever there is an SLO breach, an incident will get triggered in Squadcast so as to fix the SLO breach.