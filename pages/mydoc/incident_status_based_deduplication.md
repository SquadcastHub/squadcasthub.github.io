---
title: Incident Status Based Deduplication
tags: [set-up-your-profile, managing-all-users]
keywords: 
last_updated: 
datatable: 
summary: "Use Incident Status Based Deduplication to deduplicate all open events to an existing open Incident for a service"
sidebar: mydoc_sidebar
permalink: docs/status-based-deduplication
folder: mydoc
---

Incident Status Based Deduplication works on the logic that all incidents that come in for a service is related to the same cause. So, if there is an open (Triggered or Acknowledged state) incident for a service, any and all incidents that come in for this service will get deduplicated against this open incident. 

## Enabling the Incident Status Based Deduplication

- You can enable this while adding a service using the `Add Service` button. 

- Check the box with the information message and choose the appropriate time window for which you'd like this deduplication rule to hold true. 

![](images/status-based-deduplication_1.png)

- By default, this will remain unchecked.

- If enabled, you will be seeing the Deduplication rule below in the Deduplication UI. 

![](images/status-based-deduplication_2.png)

- You can edit, change the execution priority or delete this rule based on your requirements.  

{{site.data.alerts.yellow-note-i}}
<b>Note:</b>
<br/><br/><p>This option can be enabled only at the start of a Service Creation. If you leave this box unchecked and want to add this as a Deduplication rule later, you can copy paste the rule below and change the execution priority accordingly. <br/>
<code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">past_incident.is_suppressed == false</code> with the appropriate deduplication time window.</p>
{{site.data.alerts.end}}