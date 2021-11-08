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

Filter Incidents by different parameters like Date & Time of creation, affected **Services**, **Alert Sources**, to whom an incident was **Assigned To** or custom **Tags** associated with the incidents.

## Getting Started

First, select the **Team** from the team picker on the top

**(1)** Click on **Incidents** on the sidebar

![](images/incident_list_1.png)

**(2)** Click on **Add Filter** to customize your incident list by applying multiple filters

![](images/incident_list_7.png)

**(3)** The filters that are available at the moment are:
- Date & Time
- Service
- Alert Source
- Assigned To
- Tags
- Status

![](images/incident_list_8.png)

### Date & Time

This filter allows you to filter down incidents to a **specific time range**. By default, the incidents within the last **30 days** are displayed. Change the filter by choosing a different option.

![](images/filter_1.png)

#### Custom Range

This option allows you to give a custom time range within which you would like to view your incidents. Here, you can also select the exact time with which you would like to filter by.

**Note:** You will be limited to choose the custom time range here based on the [plan](https://squadcast.com/pricing) that you are currently on (data retention by the plan).

![](images/filter_2.png)

### Service

Filter incidents by **[Services](adding-a-service-1)**.

You can choose to filter by multiple Services, so use the checkbox to select all the Services. You can also use the search box to narrow down your options.

![](images/filter_3.png)

### Alert Source

Filter incidents by **[Alert Sources](adding-a-service-1#alert-sources-integrations)**.

You can choose to filter by multiple Alert Sources, so use the checkbox to select all the Alert Sources. You can also use the search box to narrow down your options.

![](images/filter_4.png)

### Assigned To

Filter incidents by the **[Users](add-and-delete-users)**, **[Squads](squads)** or **[Escalation Policies](escalation-policies)** using this filter.

You can choose to filter by multiple values, so use the checkbox to select all the values. You can also use the search box to narrow down your options.

![](images/filter_5.png)

### Tags

Filter Incidents by **[Tags](event-tagging)**.

![](images/filter_6.png)

- In order to filter by **Tags**, first select the `key`.

![](images/filter_7.png)

- Then select the `value` of the **Tag**. You can use the search box to narrow down your options.

![](images/filter_8.png)

**Note:** When you are not filtering by any **Services**, tags across all the **Services** will be displayed. To narrow down your **Tags** by **Service**, make sure to apply the **Service** filter first.

#### Search for Custom Tags

If you are unable to find the option you want to filter by, then you can input custom values for **Tag** search. In order to do so, enter the custom `key` / `value` and click on the `+` icon to add the custom **Tag** filter.

![](images/filter_9.png)

![](images/filter_10.png)

#### Add / Delete Multiple Tag Filters

To add a new **Tag** filter, open the tags filter and click on the `+ new tag` button, and select the `key` and `value` of the new **Tag**.

To delete a **Tag** filter, click on the cross button of the corresponding **Tag**.

![](images/filter_11.png)

{{site.data.alerts.yellow-note-i}}
<b>Multiple Tag Filters</b><br/><br/>
<p>Choosing multiple <b>Tag</b> values will serve as a logical <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">AND</code> operation. Should you want to see the list of incidents for each <b>Tag</b>, make sure to do so in multiple steps.</p>
{{site.data.alerts.end}}

### Status

Filter Incident by **[Incident Status](dashboard-metrics#incident-state-metric)**.

Select the *Statuses* of your choice to filter out incidents by statuses.

![](images/filter_12.png)