---
title: Filter Incidents
tags: [set-up-your-profile, managing-all-users]
keywords: 
last_updated: 
datatable: 
summary: "Filter Incidents"
sidebar: mydoc_sidebar
permalink: docs/filter-incidents
folder: mydoc
---

Filter Incidents by different parameters like Date & Time of creation, affected business Service, Alert Source, to whom an incident is Assigned To or custom Tags. 

## Getting Started

**(1)** Click on **Incident List** on the sidebar

![](images/filter_1.png)

**(2)** Click on **Add Filter** to customize your incident list by applying multiple filters

![](images/filter_2.png)

**(3)** The filters that are available at the moment are:
- Date & Time
- Service
- Alert Source
- Assigned To
- Tags
- Status

![](images/filter_3.png)

### Date & Time

This filter allows you to filter down incidents to a specific time range. By default, the incidents within the last 365 days are displayed. Change the filter by choosing a different option.

![](images/filter_4.png)

#### Custom Range

This option allows you to give a custom time range within which you would like to view your incidents. Here you can also select the exact time with which you would like to filter by.

![](images/filter_5.png)

### Service

Filter incidents by *[Services](adding-a-service-1)*.

You can choose to filter by multiple values, so use the checkbox to select all the values. You can also use the search box to narrow down your options.

![](images/filter_6.png)

### Alert Source

Filter incidents by *[Alert Sources](adding-a-service-1#alert-sources-integrations)*.

You can choose to filter by multiple values, so use the checkbox to select all the values. You can also use the search box to narrow down your options.

![](images/filter_7.png)

### Assigned To

Filter incidents by the *[Users](add-users)*, *[Squads](squads)* or *[Escalation Policies](escalation-policies)* using this filter.

You can choose to filter by multiple values, so use the checkbox to select all the values. You can also use the search box to narrow down your options.

![](images/filter_8.png)

### Tags

Filter Incidents by *[Tags](event-tagging)*.

In order to filter by **Tags**, first select the `key` and then select the `value` of the **Tag** you would like to filter by. You can use the search box to narrow down your options.

![](images/filter_9.png)

{{site.data.alerts.yellow-note-i}}
<b>Multiple Tag Filters</b><br/><br/>
<p>Choosing multiple <b>Tag</b> values will serve as a logical <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">AND</code> operation. Should you want to see the list of incidents for each <b>Tag</b>, make sure to do so in multiple steps.</p>
{{site.data.alerts.end}}

### Status

Filter Incident by *[Incident Status](dashboard-metrics#incident-state-metric)*.

Use the checkbox to select the value of your choice. 

![](images/filter_10.png)