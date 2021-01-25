---
title:  Maintenance Mode
tags: [maintenance mode]
keywords:
last_updated: 
summary: "Create Maintenance Mode windows for Services"
sidebar: mydoc_sidebar
permalink: docs/maintenance-mode
folder: mydoc
---

Maintenance Mode enables you to reduce alert noise during the scheduled maintenance window. Alerts generated during maintenance windows would be automatically suppressed hence, no notifications are generated for these suppressed alerts. One can quickly list incidents that are in the suppressed state by simply filtering them in the [Incident List](incident-list-table-view#quick-filter-by-incident-status) page.

## Setting up a Maintenance Mode window for a Service

**(1)** Click on **Services** on the sidebar

![](images/maintenance_1.png)

**(2)** Click on "more options" for the Service of your choice and select **Maintenance Mode** from the drop-down 

![](images/maintenance_2.png)

**(3)** Toggle the button **on** to enable Maintenance Mode window 

![](images/maintenance_3.png)

**(4)**  Enter the Date and Time range during which maintenance would be carried out. Maintenance windows can also be scheduled i.e. you can also choose to repeat it every day, every 7 days or 30 days. **Save** the set configuration

![](images/maintenance_4.png)

That’s it! The maintenance window has now been created for the Service

{{site.data.alerts.yellow-note-i}}
<b>Indication of Services under Maintenance</b>
<p><br/>A Service in Maintenance Mode is indicated with an "Under Maintenance" tag on the Service card as seen in the screenshot below</p>
{{site.data.alerts.end}}

![](images/maintenance_5.png)

## FAQ

**(1)** Where can I see the suppressed incidents?

Suppressed incidents can be viewed on the Incident Dashboard by clicking on the **Suppressed** tab as shown below:

![](images/maintenance_6.png)

On the Incident List page, suppressed incidents can be viewed under the Suppressed state as shown below:

![](images/maintenance_7.png)

**(2)** Is Maintenance window global to the selected Service?

Yes, it is global to a Service.

**(3)** Can I change the state of a suppressed incident?

No, `suppressed` would be the final state of an incident. It cannot be changed.