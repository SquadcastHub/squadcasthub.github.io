---
title: Incident List Table View
tags: [set-up-your-profile, managing-all-users]
keywords: 
last_updated: 
datatable: 
summary: "List view for all your incidents"
sidebar: mydoc_sidebar
permalink: docs/incident-list-table-view
folder: mydoc
---

The incident List Table View gives you a clear view of all your incidents along with its relevant information at a single glance. 

## Accessing this view

**(1)** Click on **Incident List** on the sidebar

![](images/incident_list_1.png)

**(2)** View the Incident Message, time of creation, associated Service, Assigned to and the current Status of the incident

![](images/incident_list_2.png)

### Quick Filter by Incident Status

Filter incidents by status by using the status dropdown and choosing the appropriate option.

![](images/incident_list_3.png)

### Bulk Actions

Acknowledge and Resolve multiple incidents in one go by selecting the incidents and selecting the appropriate action button.

![](images/incident_list_4.png)

When an action is selected it is performed instantly without asking for confirmation so be wary while performing the action.

### Create an Incident Manually

**(1)** Click on **Create new incident** 

![](images/incident_list_5.png)

**(2)** Enter the *Incident Title*, *Incident Description*, select the *Service*, specify who should be notified under *Assign To*, add *Tags* and click on *Create new incident* to create the incident

![](images/incident_list_6.png)

### Filter Incidents

**(1)** Click on **Add Filter** to filter incidents and create [custom views](save-filter-view). 

![](images/incident_list_7.png)

**(2)** Incidents can be filtered by:
- Date & Time
- Service
- Alert Source
- Assigned To
- Tags
- Status

![](images/incident_list_8.png)

Learn more about each filter value [here](filter-incidents).

{{site.data.alerts.blue-note}}
<b>Using the Status Filter</b><br/><br/>
<p>If you want to filter incidents that are in a particular state (Triggered, Acknowledged, Resolved or Suppressed), in addition to the other filters you use, add the <b>Status</b> filter as well.</p>
{{site.data.alerts.end}}

### Export Incidents

**(1)** Add the filters of your choice and click on the **download** icon to download the incidents

![](images/incident_list_9.png)

{{site.data.alerts.red-note}}
<b>Incident Export Limit</b><br/><br/>
<p>At the moment you can export only a maximum of 1000 incidents at once. Please tweak your filters to ensure the incidents count is within the limit.</p>
{{site.data.alerts.end}}

**(2)** The exported CSV file will have the following fields:
- Number
- Title
- Description
- Status
- Service
- Alert Source
- Assignee
- Created At
- Acknowledged At
- Resolved At
- Tags
- Event Count

{{site.data.alerts.green-note-check}}
<b>Public API</b><br/><br/>
<p>Exporting incidents as CSV is available as a public API. Check out the Apidocs <a href="https://apidocs.squadcast.com/#3d00d5c6-6b9b-410c-a11b-0da72c60d419" target="_blank">here</a>.</p>
{{site.data.alerts.end}}

### Free text Search 

Search for **Message**, **Incident Description** and **Postmortem** using the free text Search box.

![](images/incident_list_10.png)

### Load More Incidents

In order to load more incidents, just scroll to the end of the list and new incidents will be automatically added.

![](images/incident_list_11.png)