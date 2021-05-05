---
title: Analytics & Reporting
tags: [analyze metrics]
keywords:
last_updated:
summary: "Analytics for measuring your Organization's performance"
sidebar: mydoc_sidebar
permalink: docs/analytics
folder: mydoc
---

### Introduction

The **Analytics Dashboard** helps you analyze your Organization's performance, for a given time period, by providing you the hard numbers in the form of easy to understand graphs and charts.

## Visualizing the Graphs

**1.** On the Sidebar, click on **Analytics**.

![](images/analytics_sidebar.png)

**2.** By default, the selected time range is the **last three months**.

You can select a custom time range using the utility on the top-right corner of the page, to *select* and *apply* a time range for the **Analytics** data computation.

![](images/time_range_selector.png)

{{site.data.alerts.blue-note}}
<b>Time Range Selector as a Top Level Filter</b>
<br/><br/><p>The applied time range selection updates all the graphs shown on the <b>Analytics</b> dashboard.</p>
{{site.data.alerts.end}}

### Available Graphs 

#### Incident Count

Displays the **Incident Count** for a selected time range as a continuous line. Lines could be created based on **Status**, **Service** or **Alert Source** associated with the incidents.

![](images/incident_count_line_chart.png)

#### Incident Count Heat Map

Displays the **Incident Count** and the *associated information* on interaction with each block in the heat map.

![](images/incident_count_heat_map.png)

Upon clicking on any block present in the heat map, data on the following graphs would change automatically.

1.  **Incident Count By Status**

    Displays **Incident Count** based on different statuses like **Triggered**, **Acknowledged**, **Suppressed** and **Resolved**. 

    ![](images/incident_count_by_status.png)

2.  **Incident Count By Service**

    Displays **Incident Count** based on different configured services in an Organization.

    ![](images/incident_count_by_service.png)

3.  **Incident Count By Alert Sources**

    Displays **Incident Count** based on different configured alert sources in an Organization.

    ![](images/incident_count_by_alert_source.png)

#### Incident Count By Service

1.  **Suppressed Events By Service**

    Displays **Incident Count** **Suppressed** per service.

    ![](images/incident_count_suppressed_per_service.png)

2.  **Deduplicated Events By Service**

    Displays **Incident Count** **Deduplicated** per service.

    ![](images/incident_count_deduplicated_per_service.png)

3.  **Open Incidents By Service (Triggered & Acknowledged)**

    Displays **Incident Count** of **Triggered** and **Acknowledged** incidents per service.

    ![](images/incident_count_open_incidents_per_service.png)

4.  **Closed Incidents By Service (Resolved & Suppressed)**

    Displays **Incident Count** of **Resolved** and **Suppressed** incidents per service.

    ![](images/incident_count_closed_incidents_per_service.png)

{{site.data.alerts.blue-note}}
<b>Note</b>
<br/><br/><p>The data in the dashboard is updated <i>every 24 hours</i> and the details of the latest update is displayed on the top-right hand corner of the dashboard - right next to the <i>time range selector</i>(as shown below).</p>
{{site.data.alerts.end}}

![](images/last_updated_on.png)
