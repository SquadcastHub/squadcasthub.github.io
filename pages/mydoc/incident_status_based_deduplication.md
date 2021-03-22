---
title: Incident Status Based De-duplication
tags: [set-up-your-profile, managing-all-users]
keywords: 
last_updated: 
datatable: 
summary: "Use Incident Status Based De-duplication to de-duplicate all alerts to an existing open incident for a Service"
sidebar: mydoc_sidebar
permalink: docs/status-based-deduplication
folder: mydoc
---

Incident Status Based De-duplication works on the logic that all alerts that come in for a Service are related to the same issue. So, if there is an open incident for a Service - that is, incident is in the `Triggered` or `Acknowledged` state, **all** incidents that come in for this Service will get de-duplicated against the existing, open incident within the specified time window.

## Enabling the Incident Status Based De-duplication

### Enabling this while creating a new Service

**(1)** Navigate to **Services** from the sidebar

**(2)** Click on **Add Service**

![](images/status-based-deduplication_1.png)

**(3)** Fill in the required details and enable the checkbox at the bottom that says **De-duplicate all incoming incidents against any open incident for this service for** and specify the De-duplication Time Window. The maximum time allowed for de-duplication is **48 hours**.

![](images/status-based-deduplication_2.png)

{{site.data.alerts.yellow-note-i}}
<b>Note</b>
<br/><br/><p>By default, Incident Status Based De-duplication checkbox in the Service creation modal will remain unchecked.</p>
{{site.data.alerts.end}}

**(4)** After enabling the checkbox and creating the Service, if you click on the **More** option for the Service

![](images/status-based-deduplication_3.png) 

Select **De-duplication Rules**, you will be able to see the De-duplication Rule added for the same.

![](images/status-based-deduplication_4.png) 

## Enabling this for an existing Service

{{site.data.alerts.yellow-note-i}}
<b>Note</b>
<br/><br/><p>If you leave the Incident Status Based De-duplication box unchecked at the time of Service creation and want to add this rule later, you can copy and paste the rule below and change the Rule Execution Priority accordingly. <br/>
<code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">past_incident.is_suppressed == false</code> with the appropriate deduplication time window.</p>
{{site.data.alerts.end}}

## FAQs

**(1)** I have added the De-duplication Rule `past_incident.is_suppressed == false` manually to an existing Service to de-duplicate all alerts against any open incident for the Service. Nevertheless, I do not see Incident Status Based De-duplication taking place as expected. What am I missing?

Once the De-duplication Rule `past_incident.is_suppressed == false` is added manually to an existing Service, please move the rule `up` or `down` based on the Rule Execution Priority you wish to have. If you do not want any of your other De-duplication Rules to be executed for the Service, move the newly added De-duplication Rule to the top of the list of rules. 

![](images/status-based-deduplication_5.png)