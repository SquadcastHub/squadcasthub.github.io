---
title: Export Incidents
tags: [set-up-your-profile, managing-all-users]
keywords: 
last_updated: 
datatable: 
summary: "Export Incidents"
sidebar: mydoc_sidebar
permalink: docs/export-incidents
folder: mydoc
---

You can now export your incidents in CSV format to be used for further processing. Just add the filters you would like to apply and press the download icon to download the exported incidents.

![](images/export_1.png)

{{site.data.alerts.yellow-note-i}}
<b>Export Limit</b>
<br/><br/><p>At the moment you can export only a maximum of 1000 incidents at once. Please tweak your filter to ensure the incidents count is within that limit.</p>
{{site.data.alerts.end}}

## CSV Fields

The exported CSV file will have the following fields:

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
<b>Export Limit</b>
<br/><br/><p>Exporting incidents as CSV is available as a public API. Check out the Apidocs <a href="https://apidocs.squadcast.com/#3d00d5c6-6b9b-410c-a11b-0da72c60d419" target="_blank">here</a>.</p>
{{site.data.alerts.end}}