---
title: Analytics & Reporting
tags: [analyze metrics]
keywords:
last_updated:
summary: "Analytics for measuring your organization's performance"
sidebar: mydoc_sidebar
permalink: docs/analytics
folder: mydoc
---

### Introduction

The **Analytics Dashboard** helps you analyze your organization's performance, in any given time period, by providing you the hard numbers in easy to understand graphs and charts.

### Navigation

You can access the **Analytics** page in the **Squadcast** web app by selecting **Analytics** from the sidebar on the left of the webpage. 

![](images/analytics_nav.png)

### Time Range Selector

On the top-right hand corner of the **Analytics Dashboard** is the utility to *select* and *apply* a time range for the **Analytics** data computation. 

![](images/time_range_selector.png)

{{site.data.alerts.blue-note}}
<b>Time Range Selector as a Top Level Filter</b>
<br/><br/><p>The applied time range selection updates all the graphs shown on the <b>Analytics</b> dashboard.</p>
{{site.data.alerts.end}}

### Available Graphs 

#### Incident Count - I

![](images/incident_count_line_chart.png)

**Format**: Line Chart (With Information available on Hover)

**Function**: Displays the **Incident Count** for a selected time range as a continuous line.

**Options**: Lines could be created based on **Status**, **Service** or **Alert Source** associated with the incidents.

**Sub-Graphs**: None

#### Incident Count - II

![](images/incident_count_heat_map.png)

**Format**: Interactive Heat Map (With Information available on Click)

**Function**: Displays the **Incident Count** and the *associated information* on interaction with each block in the heat map.

**Options**: None

**Sub-Graphs**: Clicking on any block in the heat map loads data in *three* other graphs connected to it. They are:

1.  **Incident Count By Status**

    **Format**: Pie Chart

    **Function**: Displays **Incident Count** based on different statuses like **Triggered**, **Acknowledged**, **Suppressed** and **Resolved**. 

    **Options**: None

2.  **Incident Count By Service**

    **Format**: Horizontal Bar Graph

    **Function**: Displays **Incident Count** based on different configured services in an organization.

    **Options**: None

3.  **Incident Count By Alert Sources**

    **Format**: Horizontal Bar Graph

    **Function**: Displays **Incident Count** based on different configured alert sources in an organization.

    **Options**: None

#### Incident Count - III

![](images/incident_count_bar_graphs.png)

**Sub-Graphs**:

1.  **Suppressed Events By Service**

    **Format**: Horizontal Bar Graph

    **Function**: Displays **Incident Count** **Suppressed** per service.

    **Options**: None

2.  **Deduplicated Events By Service**

    **Format**: Horizontal Bar Graph

    **Function**: Displays **Incident Count** **Deduplicated** per service.

    **Options**: None

3.  **Open Incidents By Service (Triggered & Acknowledged)**

    **Format**: Horizontal Bar Graph

    **Function**: Displays **Incident Count** of **Triggered** and **Acknowledged** incidents per service.

    **Options**: None


{{site.data.alerts.blue-note}}
<b>Default Time Range</b>
<br/><br/><p>By default, the <i>selected time range</i> is <b>last three months</b>.</p>
{{site.data.alerts.end}}

### Information on Latest Update

The data in the dashboard is updated *every 24 hours* and the details of the latest update is displayed on the top-right hand corner of the dashboard - right next to the *time range selector*.

![](images/last_updated_on.png)
