---
title: ClickUp
keywords: 
last_updated: 
summary: "Send ticket details to Squadcast from ClickUp"
sidebar: mydoc_sidebar
permalink: docs/clickup
folder: mydoc
---

This document will help you integrate ClickUp with Squadcast.

[ClickUp](https://clickup.com/) is unique Hierarchy helps you create the perfect structure that scales with your needs. Each level of ClickUp gives you more flexibility and control to organize everything from small teams to enterprise companies.

Route detailed ticket alerts from ClickUp to the right users in Squadcast.

## How to integrate ClickUp with Squadcast

### In Squadcast: Using ClickUp as an Alert Source

**(1)** On the **Sidebar**, click on **Services**

![](images/integration_1-1.png)

**(2)** Select an existing Service or **Add Service** 

![](images/integration_1-2.png)

**(3)** Click on the corresponding **Alert Sources**

![](images/integration_1.png)

**(4)** Search for **ClickUp** from the **Alert Source** drop-down menu and copy the Webhook

![](images/clickup_1.png)

{{site.data.alerts.yellow-note-i}}
<b>Important</b><br/><br/>
<p>For an Alert Source to turn active (indicated by a <b>green dot - Receiving alerts</b> against the name of the Alert Source in the drop-down), you can either generate a test alert or wait for a real-time alert to be generated by the Alert Source.</p>
<p>An Alert Source is active if there is a recorded incident via that Alert Source for the Service in the last 30 days.</p>
{{site.data.alerts.end}}

### In ClickUp: Create a Squadcast Webhook

**(1)** Goto **Space > New Space** and create new space.

![](images/clickup_2.png)

**(2)** Click on new created **Space** and then click on **Automate > Add automation** at top right corner

![](images/clickup_3.png)

![](images/clickup_4.png)

**(3)** select **condition** as per choice (In which case you want to trigger webhook) and select **Call webhook** as shown in below screenshot

![](images/clickup_5.png)

**(4)** Paste copied webhook in **URL** field and click on **Create**

![](images/clickup_6.png)


That is it, you are now good to go! Whenever a case is created with `Open` status, an incident will be created in Squadcast for it. When the ticket is moved to `Closed` status in ClickUp, the corresponding incident will automatically get resolved in Squadcast as well.