---
title: Take Bulk Actions
tags: [bulk actions]
keywords:
last_updated:
summary: "Bulk actions help you change the incident states of multiple incidents at one go"
sidebar: mydoc_sidebar
permalink: docs/take-bulk-actions
folder: mydoc
---

Bulk actions are a way for you to change the Incident Statuses for multiple incidents at one shot. You can do this by following the steps below.

**(1)** Pick a **Team** from the team picker on the top of the screen. Move over to the status-wise filters in the **Incident Dashboard**. Click on the incident state for which you need the incidents either **Acknowledged** or **Resolved**.

In this example, we have clicked on the **Triggered** state and will be moving these incidents to the **Acknowledged** state.

![](images/bulk_actions_1.png)

**(2)** Check the box under the **Actions** button to select **all** the incidents that are shown in the view. You can also choose to select specific incidents for which you want to take the action.

{{site.data.alerts.note}}
<br/><br/><p>You will only be able to view a maximum of 20 incidents at once. So, you will only be able to select a maximum of 20 incidents at once. For a more detailed view of incidents, navigate to the <a href="incident-list-table-view">Incident List</a> page.</p>
{{site.data.alerts.end}}

![](images/bulk_actions_2.png)

**(3)** Click on the **Actions** dropdown and select the new incident state that you want the selected incidents to reflect. In this example, we are choosing **Acknowledge**.

![](images/bulk_actions_3.png)

**(4)** This will then open a pop-up with the details of the incidents that are selected. You can review and then click **Confirm & Acknowledge**.

![](images/bulk_actions_4.png)

Now, the selected incidents will reflect the new incident state.

Similarly, you can choose to do this to incidents in the **Acknowledged** state as well.

{{site.data.alerts.note}}
<br/><br/><p>When you delete a service, you will have to ensure that there are no incidents in the <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">Triggered</code> or <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">Acknowledged</code> states. All incidents should be <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">Resolved</code>.</p>
{{site.data.alerts.end}}