---
title: Jira Cloud Alert Source
tags: [integration, jira cloud]
keywords: 
last_updated: 
summary: "Get alerts from Jira Cloud into Squadcast"
sidebar: mydoc_sidebar
permalink: docs/jira-cloud-alert-source
folder: mydoc
---

## Pre-requisites
1. A valid Squadcast cloud / On-Premise subscription 
2. A user account in JIRA Cloud with Administrator privileges

Follow the steps below to configure a service so as to push related alert data from Jira onto Squadcast.

Squadcast will then process this information to create incidents for this service as per your preferences.

## Using Jira as an Alert Source in Squadcast

**(1)** From the navigation bar on the left, select **Services**. Pick the applicable **Team** from the Team-picker on the top. Next, click on **Alert Sources** for the applicable Service

![](images/alert_source_1.png)

**(2)** Search for **Jira Cloud** from the Alert Source drop-down and copy the Webhook URL

![](images/jira_cloud_1.png)

{{site.data.alerts.yellow-note-i}}
<b>Important</b><br/><br/>
<p>For an Alert Source to turn active (indicated by a <b>green dot - Receiving alerts</b> against the name of the Alert Source in the drop-down), you can either generate a test alert or wait for a real-time alert to be generated by the Alert Source.</p>
<p>An Alert Source is active if there is a recorded incident via that Alert Source for the Service in the last 30 days.</p>
{{site.data.alerts.end}}

## Create a Squadcast Webhook in Jira Cloud

1.Login to Jira Cloud and go to **Settings** in left-side pannel.

![](images/jira_cloud_2.png)

2.Go to **System** under **Jira Settings**

![](images/jira_cloud_3.png)

3.Click on the **WebHook** tab under the **Advanced** Section.

![](images/jira_cloud_4.png)

4.Click on **Create a Webhook**.

![](images/jira_cloud_5.png)

5.Paste the **Jira Cloud Webhook URL** copied from Squadcast Dashboard in the **URL** field and check the  **created** And **updated** check boxes under issues. Click on **Create** to finally save the webhook.

![](images/jira_cloud_6.png)

{{site.data.alerts.yellow-note-i}}
<b>Note</b><br/><br/>
<p>Enable only the highlighted <b>Issue related events</b> as shown in the screenshot above. Squadcast will ignore any other Issue event type.</p>
{{site.data.alerts.end}}

Now whenever an issue goes to status-category with key **new** in Jira, an incident will be triggered in Squadcast . Also when that issue goes to status-category with key **done** in Jira, it will be resolved in Squadcast.