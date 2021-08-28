---
title: Maintenance Mode
tags: [maintenance mode]
keywords:
last_updated:
summary: "Create Maintenance Mode windows for Services"
sidebar: mydoc_sidebar
permalink: docs/maintenance-mode
folder: mydoc
---

Maintenance Mode enables you to reduce alert noise during the scheduled maintenance window. Alerts generated during active maintenance windows would be automatically suppressed and hence, no notifications are generated for those suppressed alerts. One can quickly list incidents that are in the suppressed state by simply filtering them in the [Incidents](incident-list-table-view#quick-filter-by-incident-status) page.

### Prerequisites

- The User Role associated with the user in the Team must have required permissions to manage Services (ability to manage Maintenance Windows).

### Setting up a Maintenance Mode window for a Service

Ensure that the right Team is chosen from the team picker on the top of the screen.

**(1)** Click on **Services** in the primary navigation

![](images/maintenance_1.png)

**(2)** Click on the **More options** icon for the Service of your choice and select **Maintenance Mode** from the drop-down

![](images/maintenance_2.png)

**(3)** Toggle the button **on** to enable Maintenance Mode window creation

![](images/maintenance_3.png)

**(4)** Enter the **Date and Time range** during which maintenance would be carried out

Maintenance windows can also be scheduled i.e. you can also choose to repeat it every day, every 7 days or 30 days

**(5)** **Save** the set configuration

![](images/maintenance_4.png)

That’s it, the maintenance window has now been created for the Service!

{{site.data.alerts.yellow-note-i}}
<b>Indication of Services under Maintenance</b>

<p><br/>A Service in Maintenance Mode is indicated with an "Under Maintenance" tag on the Service card as seen in the screenshot below</p>
{{site.data.alerts.end}}

![](images/maintenance_5.png)

### FAQs

**(1)** Where can I see all the suppressed incidents?

Suppressed incidents can be viewed on the **Dashboard** by clicking on the `Suppressed` tab as shown below:

![](images/maintenance_6.png)

On the **Incidents** page, suppressed incidents can be viewed under the `Suppressed` state as shown below:

![](images/maintenance_7.png)

**(2)** How do I know if an incident is suppressed due to scheduled maintenance and not due to any other Suppression Rule?

In the Incident's Activity Timeline the reason for suppression is displayed, in this case it will be `auto suppressed due to scheduled maintenance`.

![](images/maintenance_timeline.png)

**(3)** Is a maintenance window global to the associated Service?

Yes, it is global to the associated Service.

**(4)** Can I change the state of a suppressed incident?

No, `suppressed` would be the final state of an incident. It cannot be changed.

**(5)** I am able to view Services for my Team but am unable to add a maintenance window to it. What am I missing?

The User Role associated with your user in the Team must have required permissions (such as `Update`) to manage/edit Services.