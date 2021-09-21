---
title: Analytics & Reporting
tags: [analyze metrics]
keywords:
last_updated:
summary: "Analytics for measuring your Team's performance"
sidebar: mydoc_sidebar
permalink: docs/analytics
folder: mydoc
---

### Introduction

The **Analytics Dashboard** helps you analyze your Teams's performance, for a given time period, by providing you the hard numbers in the form of easy to understand graphs and charts.

### Visualizing the Graphs

**Note:** Select the appropriate Team from the team picker on the top of your screen.

**1.** On the Sidebar, click on **Analytics**

![](images/analytics_sidebar.png)

**2.** By default, the selected time range is the **last three months**

You can select a custom time range using the utility on the top-right corner of the page, to *select* and *apply* a time range for the **Analytics** data computation.

![](images/time_range_selector.png)

{{site.data.alerts.blue-note}}
<b>Time Range Selector as a Top Level Filter</b>
<br/><br/><p>The applied time range selection updates all the graphs shown on the <b>Analytics</b> dashboard.</p>
{{site.data.alerts.end}}

### Available Graphs 

#### Incident Count

Displays the **Incident Count** for a selected time range as a line graph. You can add additional graph inputs(lines) by tweaking the **Status**, **Service** or **Alert Source** filters associated with the graph.

![](images/incident_count_line_chart.png)

{{site.data.alerts.blue-note}}
<b>Note</b>
<br/><br/><p>You can only choose a maximum of 10 filters at any given point in time.</p>
{{site.data.alerts.end}}

#### Incident Count Heat Map

Displays the **Incident Count** and the *associated information* on interaction with each block in the heat map.

![](images/incident_count_heat_map.png)

Upon clicking on any block present in the heat map, data on the following graphs would change automatically.

1.  **Incident Count By Status**

    Displays **Incident Count** based on different statuses like **Triggered**, **Acknowledged**, **Suppressed** and **Resolved**. 

    ![](images/incident_count_by_status.png)

2.  **Incident Count By Service**

    Displays **Incident Count** based on different configured Services in a Team.

    ![](images/incident_count_by_service.png)

3.  **Incident Count By Alert Sources**

    Displays **Incident Count** based on different configured Alert Sources in a Team.

    ![](images/incident_count_by_alert_source.png)

#### Incident Count By Service

1.  **Suppressed Events By Service**

    Displays the number of **Suppressed Events** per Service.

    ![](images/incident_count_suppressed_per_service.png)

2.  **Deduplicated Events By Service**

    Displays the number of **Deduplicated Events** per Service.

    ![](images/incident_count_deduplicated_per_service.png)

3.  **Open Incidents By Service (Triggered & Acknowledged)**

    Displays the number of **Open Incidents** per Service.

    ![](images/incident_count_open_incidents_per_service.png)

4.  **Closed Incidents By Service (Resolved & Suppressed)**

    Displays the number of **Closed Incidents** per Service.

    ![](images/incident_count_closed_incidents_per_service.png)

{{site.data.alerts.blue-note-md}}
**Note**

The data in the dashboard is updated _every 24 hours_ and the details of the latest update is displayed on the top-right hand corner of the dashboard - right next to the _time range selector_ (as shown below).

![](images/last_updated_on.png)
{{site.data.alerts.end}}

