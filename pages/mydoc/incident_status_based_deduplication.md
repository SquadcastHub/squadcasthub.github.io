---
title: Incident Status Based Deduplication
tags: [set-up-your-profile, managing-all-users]
keywords: 
last_updated: 
datatable: 
summary: "Use Incident Status Based Deduplication to deduplicate all alerts to an existing open incident for a Service"
sidebar: mydoc_sidebar
permalink: docs/status-based-deduplication
folder: mydoc
---

Incident Status Based Deduplication works on the logic that all alerts that come in for a Service are related to the same issue. So, if there is an open incident for a Service - that is, incident is in the `Triggered` or `Acknowledged` state, **all** incidents that come in for this Service will get deduplicated against the existing, open incident within the specified time window.

## Prerequisites

- The User Role associated with the user in the Team must have required permissions to manage Services (ability to manage Deduplication Rules).

## Enabling the Incident Status Based Deduplication

### Enabling this while creating a new Service

Ensure that the right Team is chosen from the team picker on the top of the screen.

**(1)** Click on **Services** in the primary navigation. Then, click on **Add Service** to create a new Service 

Here, in addition to the required information, **enable the checkbox** with the information message and choose the appropriate time window for which you would like this Deduplication Rule to hold true. This can be enabled/modified even after the Service is created.

**Note:** The maximum time allowed for deduplication is **48 hours**.

Finally, click on **Save** to create the Service.

![](images/images/adding_a_service_1.png)

{{site.data.alerts.yellow-note-i}}
<b>Note</b>
<br/><br/><p>By default, Incident Status Based Deduplication checkbox in the Service creation modal will remain unchecked.</p>
{{site.data.alerts.end}}

**(2)** After enabling the checkbox and creating the Service, if you click on the **More options** icon for the Service

![](images/status-based-deduplication_3.png)

Select **Deduplication Rules**, you will be able to see the Deduplication Rule added for the same.

![](images/status-based-deduplication_4.png)

### Enabling this for an existing Service

{{site.data.alerts.yellow-note-i}}
<b>Note</b>
<br/><br/><p>If you leave the Incident Status Based Deduplication box unchecked at the time of Service creation and want to add this rule later, you can copy and paste the rule below and change the Rule Execution Priority accordingly. <br/>
<code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">past_incident.is_suppressed == false</code> with the appropriate deduplication time window.</p>
{{site.data.alerts.end}}

## FAQs

**(1)** I have added the Deduplication Rule `past_incident.is_suppressed == false` manually to an existing Service to deduplicate all alerts against any open incident for the Service. Nevertheless, I do not see Incident Status Based Deduplication taking place as expected. What am I missing?

Once the Deduplication Rule `past_incident.is_suppressed == false` is added manually to an existing Service, please move the rule `up` or `down` based on the Rule Execution Priority you wish to have. If you do not want any of your other Deduplication Rules to be executed for the Service, move the newly added Deduplication Rule to the top of the list of rules. 

![](images/status-based-deduplication_5.png)