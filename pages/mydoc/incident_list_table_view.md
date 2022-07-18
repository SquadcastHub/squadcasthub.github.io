---
title: Incident List View
tags: [set-up-your-profile, managing-all-users]
keywords: 
last_updated: 
datatable: 
summary: "List view for all your Team's incidents"
sidebar: mydoc_sidebar
permalink: docs/incident-list-table-view
folder: mydoc
---

The **Incident List** view gives you a clear view of all your incidents along with its relevant information at a single glance. 

## Accessing the **Incident List** view

First, select the **Team** from the team picker on the top

**(1)** Click on **Incidents** from the sidebar

![](images/incident_list_1.png)

**(2)** View the following details for every listed incident:

- **Incident Message**
- **Created At**
- **Service** it is affecting
- **Assigned To**
- The **current Status** of the incident

![](images/incident_list_2.png)

### Quick Filter by Incident Status

Filter incidents by status by using the status drop-down and choosing the appropriate option.

![](images/incident_list_3.png)

### Bulk Actions

**Acknowledge** and **Resolve** multiple incidents in one go by bulk selecting the listed incidents and choosing the appropriate action button.

![](images/incident_list_4.png)

**Note:** When an action is selected, it is performed instantly without asking for confirmation so be wary while performing the action.

### Create an Incident Manually

**(1)** Click on **Create new incident** 

![](images/incident_list_5.png)

**(2)** Enter the *Incident Title*, *Incident Description*, select the *Service*, specify who should be notified under *Assign To*, add *Tags* and click on *Create new incident* to create the incident

![](images/incident_list_6.png)

### Filter Incidents

**(1)** Click on **Add Filter** to filter incidents and create [custom views](save-filter-view) for your Team

![](images/incident_list_7.png)

**(2)** Incidents can be filtered by:
- Date & Time
- Service
- Alert Source
- Assigned To
- Tags
- Status
- Postmortem

![](images/incident_list_8.png)

Learn more about each filter value [here](filter-incidents).

{{site.data.alerts.blue-note}}
<b>Using the Status Filter</b><br/><br/>
<p>If you want to filter incidents that are in a particular state (Triggered, Acknowledged, Resolved or Suppressed), in addition to the other filters you use, add the <b>Status</b> filter as well.</p>
{{site.data.alerts.end}}

### Export Incidents

**(1)** Add the filters of your choice and click on the **download** icon and select either the **CSV** or the **JSON** format option from the drop-down

![](images/incident_list_9.png)

{{site.data.alerts.yellow-note-i-md}}
**Incident Export Limit**

You can export as many incidents as you want, there is no set limit. You can will receive a mail once the download is completed instead of a downloaded notification right away.

For more information, check out our [Export Async API Documentation](https://apidocs.squadcast.com/#15f17e18-af02-4835-a4a4-59c840e19e16).
{{site.data.alerts.end}}

**(2)** The exported **CSV** or **JSON** file will have the following fields:

- Incident ID
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
- TTA (Time to Acknowledge)
- TTR (Time to Resolve)
- Activity Logs

{{site.data.alerts.green-note-check}}
<b>Export Incidents: Public API</b><br/><br/>
<p>Exporting incidents as <b>CSV</b> or <b>JSON</b> is available as a Public API. Check out the API Documentation <a href="https://apidocs.squadcast.com/#3d00d5c6-6b9b-410c-a11b-0da72c60d419" target="_blank">here</a>.</p>
{{site.data.alerts.end}}

### Incident List Search

Search for incidents based on either the **Incident Message** or the **Incident Description** using the text Search box.

![](images/incident_list_10.png)

### Load More Incidents

In order to load more incidents, just scroll to the end of the list and the available existing incidents will be automatically displayed.

![](images/incident_list_11.png)