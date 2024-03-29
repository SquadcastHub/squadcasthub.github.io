---
title: Wavefront
#tags: [Sysdig-Monitor, Uptime-Robot]
keywords: 
last_updated: 
summary: "Send notifications to Squadcast from Wavefront"
sidebar: mydoc_sidebar
permalink: docs/wavefront
folder: mydoc
---

This document will help you integrate Wavefront with Squadcast.

[Wavefront](https://docs.wavefront.com/wavefront_introduction.html) is a high-performance streaming analytics platform that supports observability for metrics, counters, histograms, and traces/spans. Wavefront is unique because it scales to very high data ingestion rates and query loads. You can collect data from many services and sources across your entire application stack, and can look at details for earlier data that were ingested earlier.

Route detailed events from Wavefront to the right users in Squadcast.

## How to integrate Wavefront with Squadcast

### In Squadcast: Using Wavefront as an Alert Source

**(1)** From the navigation bar on the left, select **Services**. Pick the applicable **Team** from the Team-picker on the top. Next, click on **Alert Sources** for the applicable Service

![](images/alert_source_1.png)

**(2)** Search for **Wavefront** from the Alert Source drop-down and copy the Webhook URL 

![](images/wavefront_1.png)

{{site.data.alerts.yellow-note-i}}
<b>Important</b><br/><br/>
<p>For an Alert Source to turn active (indicated by a <b>green dot - Receiving alerts</b> against the name of the Alert Source in the drop-down), you can either generate a test alert or wait for a real-time alert to be generated by the Alert Source.</p>
<p>An Alert Source is active if there is a recorded incident via that Alert Source for the Service in the last 30 days.</p>
{{site.data.alerts.end}}

### In Wavefront: Create a Squadcast Webhook

**(1)** From the Home Page, navigate to **Browse** and select **Alert Targets** from the dropdown

![](images/wavefront_2.png)

**(2)** Click on **Create Alert Target** to add a Webhook for Squadcast

![](images/wavefront_3.png)

**(3)** Here:
- Give it a **Name**

- Give it a **Description**

- In **Triggers**, select **Alert Firing** and **Alert Resolved**

- In **Type**, select **Webhook**

- In **Recipients**, paste the previously copied Webhook from Squadcast in **Default Recipient**

- For **Content Type**, select `application/json`

- In **Body Template**, select **Generic Webhook**

![](images/wavefront_4.png)

- Paste the below as is in the placeholder for the template

{% raw %}
```json
{{! https://docs.wavefront.com/webhooks_alert_notification.html#customizing-alert-target-templates }}
{{#setDefaultIterationLimit}}500{{/setDefaultIterationLimit}}
{{#setFailingLimit}}500{{/setFailingLimit}}
{{#setInMaintenanceLimit}}500{{/setInMaintenanceLimit}}
{{#setNewlyFailingLimit}}500{{/setNewlyFailingLimit}}
{{#setRecoveredLimit}}500{{/setRecoveredLimit}}
{
  "getIterationLimit": {
    "defaultIterationLimit": "{{{defaultIterationLimit}}}",
    "failingLimit": "{{{failingLimit}}}",
    "inMaintenanceLimit": "{{{inMaintenanceLimit}}}",
    "newlyFailingLimit": "{{{newlyFailingLimit}}}",
    "recoveredLimit": "{{{recoveredLimit}}}"
  },
  "iterationLimitExceed": {
    {{! These boolean values are used to check whether the iterationLimit is limiting the number of the result returned. }}
    "failingLimitExceed": "{{{failingLimitExceed}}}",
    "inMaintenanceLimitExceed": "{{{inMaintenanceLimitExceed}}}",
    "newlyFailingLimitExceed": "{{{newlyFailingLimitExceed}}}",
    "recoveredLimitExceed": "{{{recoveredLimitExceed}}}"
  },
  "alertId": "{{{alertId}}}",
  "alertTags": [
    {{#trimTrailingComma}}
      {{#alertTags}}
        "{{#jsonEscape}}{{{.}}}{{/jsonEscape}}",
      {{/alertTags}}
    {{/trimTrailingComma}}
  ],
  "tracingDashboardLinks": [
    {{#trimTrailingComma}}
      {{#tracingPageLinks}}
        "{{{.}}}",
      {{/tracingPageLinks}}
    {{/trimTrailingComma}}
  ],
  "imageLinks": [
    {{#trimTrailingComma}}
      {{#imageLinks}}
        "{{#jsonEscape}}{{{.}}}{{/jsonEscape}}",
      {{/imageLinks}}
    {{/trimTrailingComma}}
  ],
  "reason": "{{{reason}}}",
  "name": "{{#jsonEscape}}{{{name}}}{{/jsonEscape}}",
  "severity": "{{{severity}}}",
  "condition": "{{#jsonEscape}}{{{condition}}}{{/jsonEscape}}",
  "url": "{{{url}}}",
  "chartUrl": "{{{chartUrl}}}",
  "subject": "{{#jsonEscape}}{{{subject}}}{{/jsonEscape}}",
  "hostsFailingMessage": "{{#jsonEscape}}{{{hostsFailingMessage}}}{{/jsonEscape}}",
  "runbookLinks": [
  {{#trimTrailingComma}}
    {{#runbookLinks}}
      "{{{.}}}",
    {{/runbookLinks}}
  {{/trimTrailingComma}}
],
  "additionalInformation": "{{#jsonEscape}}{{{additionalInformation}}}{{/jsonEscape}}"
}
```
{% endraw %}

- Click on **Save**

![](images/wavefront_5.png)

You will now be able to see this newly created Alert Target being listed under **Alert Targets**

![](images/wavefront_6.png)

**(4)** Now from the navigation bar on the top, select **Alerts**. You can choose to edit an existing alert and create a new alert

![](images/wavefront_7.png)

**(5)** In either case, for the alert, in **Target List**, choose the newly added Webhook for Squadcast in **Alert Target** and save the configuration

![](images/wavefront_8.png)

**(6)** For the alert, now you can click on the **More** option to trigger a **Test Alert** to Squadcast. An incident for this test alert will be triggered indicating the integration is working as expected

![](images/wavefront_9.png)

That is it, you are good to go! Everytime an Alert is created in Wavefront, an incident would be created in Squadcast. When the Alert is resolved in Wavefront, the corresponding incident in Squadcast will be **automatically resolved**. 