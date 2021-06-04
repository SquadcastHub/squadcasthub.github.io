---
title: Create and Manage On-call Schedules & Rotations
tags: [schedules, rotations]
summary: "Roosters for your customer support engineers or on-call teams"
sidebar: mydoc_sidebar
permalink: docs/schedules
folder: mydoc
---

On-call schedules are used to determine who will be notified when an incident is triggered. When an incident is impacting a Service, notifications are sent to that user in the Service's associated [Escalation Policy](escalation-policies). 

## Creating an On-call Schedule

**(1)** Click on **Schedules** on the sidebar

![](images/schedules_1.png)

**(2)** Click on **Add Schedule** at the right hand side of the screen

![](images/schedules_2.png)

**(3)** Enter the following information:
    
**(a) Schedule Name**: Give the schedule a name which you can use while adding the on-call schedule to the calendar

**(b) Schedule Description**: This is a short description of the schedule explaining what it is and why it exists

**(c) Schedule Color**: You can also set a color for a specific schedule, which will be used while rendering the on-call on the calendar

![](images/schedules_3.png)

**(4)** Pick **any day** of the calendar by clicking on it, to create an on-call shift starting from that day. You can also drag your cursor from one day to another, to automatically set the **Start date** and **End date**

![](images/schedules_4.png)

**(5)** **Shift Name** corresponds to the name of the on-call engineer and would be auto-filled by the system. Hence, you can *skip this field*

![](images/schedules_5.png)

**(6)** Choose the **Schedule** you want to create this on-call shift for, from the drop-down

![](images/schedules_6.png)

**(7)** Input the **Start date**, **Start time**, **End date** and **End time** to determine when the shift begins and when it ends respectively

![](images/schedules_7.png)

{{site.data.alerts.red-note}}
<b>Warning</b><br/><br/>
<p>Do not check the <code class="highlighter-rouge" style="color: #c7254e; background-color: #f9f2f4 !important;">Is Override</code> box if you want to create a normal shift.</p>
{{site.data.alerts.end}}

**(8)** **Repeats**- Repetitions can be daily, weekly or monthly. You can also restrict the schedules to specific times of the day or during specific days of the week, based on your need

Now, choose the appropriate option:

- **Everyday** - Use this to create a daily schedule (applicable for all 7 days of the week)

![](images/schedules_8.png)

- **Weekly -- Once a week** - Select this option to create a schedule that occurs only on one day of the week. You can select the day on which this shift will be active

![](images/schedules_9.png)

- **Weekly -- Particular Days Of a Week** - Select this option to create a schedule that occurs on particular days of the week. You can select the days on which this shift will be active

![](images/schedules_10.png)

- **Custom** - Select this option to create any other custom shift of your choice. You can customize the number of days/weeks/months you want the on-call to repeat for

![](images/schedules_11.png)

{{site.data.alerts.blue-note}}
<b>Info</b><br/><br/>
<p>To create a <i>recurring schedule</i>, mark <b>Ends on</b> as <b>Never</b> (enable the checkbox). <b>Never</b> is enabled by default. If you do not want a recurring schedule, disable the checkbox and specify the end date.</p>
{{site.data.alerts.end}}

**(9)** Add in the users who would be on call for this shift under the **Assignee Groups** section. Each group behaves as a different rotation. Use **Add Group** to add multiple such groups

![](images/schedules_12.png)

{{site.data.alerts.blue-note}}
<b>Note</b><br/><br/>
<p>Adding <b>Squads</b> within an <b>Assignee Group</b> would mean every member of the Squad is on-call based on the shift defined. Squadcast does not pick members one by one from within a Squad and rotate between them. For a rotation to happen <i>between 1 or more entities (Users or Squads)</i>, add them in different Assignee Groups instead.</p>
{{site.data.alerts.end}}

**(10)** Select the number of shifts after which you want to switch between the Assigned Groups 

**Example 1**: `Buzz Lightyear` is part of `#1 Group` and `Charlie Stark` is part of `#2 Group`. 
- If **Every Shift** is chosen then `#1 Group` and `#2 Group` would be on-call on alternate days
- If **Every 7 Shifts** is chosen then `#1 Group` would be on-call the first 7 days and `#2 Group` would on-call the following 7 days and so on

![](images/schedules_13.png)

**(11)** That’s it! Click on **Create** to save the schedule

{{site.data.alerts.blue-note}}
<b>Adding Schedules to Escalation Policies</b><br/><br/>
<p>You will need to add a Schedule to an Escalation Policy for the on-call users to be notified when an incident is triggered for a Service</p>
{{site.data.alerts.end}}

## Gaps in your Schedule 

It is important to ensure that there are no gaps in your Schedules. 

- If you have any gaps in your Schedules configuration, the system will prompt the banner **You have gaps in your schedule** right above the Schedules calendar view

- To know more details about the gaps, you can click on the **You have gaps in your schedule** banner and it will show you the name of the Schedule along with the date and time during which the gap has been detected

![](images/schedules_14.png)

## Manage an Existing On-call

### Update

**(1)** Select an existing on-call by clicking over any assigned User/Squad on the calendar

![](images/schedules_15.png)

**(2)** Click on **Edit**

![](images/schedules_16.png)

**(3)** Select the appropriate **Update method**:

![](images/schedules_17.png)

-  **This Event Only** - to update only that particular event 
When this choice is made, you will not see the option to *Repeat* as this is considered a one-off necessity to update. Also, this will only show the assignees of the current event picked for the update
-  **This and proceeding events** - to update the selected event and all the events that come afterwards

In the last two **Update methods**, the modal shows the **Repeats** checkbox and also, shows all the Assignee Groups in the series.

{{site.data.alerts.red-note}}
<b>Warning</b><br/><br/>
<p>The user cannot update past events as it is meant to serve as an accurate record of the past on-call Schedule.</p>
{{site.data.alerts.end}}

### Choosing a different starting Group

Starting Group determines the Group that starts the defined Rotation. This can only be defined when the update method chosen is **This and Following Shifts** option is selected in the update method.

![](images/schedules_group_2.png)

{{site.data.alerts.blue-note-md}}
**Note:**


By Default #1 Group will be the starting Group.


![](images/schedules_group_1.png)
{{site.data.alerts.end}}

### Deleting an On-call

**(1)** Delete an existing on-call by clicking the **Delete** button at the bottom right corner of the **Update on-call shift** dialog box

![](images/schedules_delete_1.png)

**(2)** Choose the appropriate option:
- **This event only** - It will delete only the selected event of the series
- **This and proceeding events** - It will delete the event selected as well as all the future events belonging to that series

![](images/schedules_delete_2.png)

## How to Video

<script src="https://fast.wistia.com/embed/medias/9wor2hwbo9.jsonp" async></script><script src="https://fast.wistia.com/assets/external/E-v1.js" async></script><div class="wistia_responsive_padding" style="padding:53.75% 0 0 0;position:relative;"><div class="wistia_responsive_wrapper" style="height:100%;left:0;position:absolute;top:0;width:100%;"><span class="wistia_embed wistia_async_9wor2hwbo9 popover=true popoverAnimateThumbnail=true videoFoam=true" style="display:inline-block;height:100%;position:relative;width:100%">&nbsp;</span></div></div>

## FAQs

**Q:** How can I add users in different time zones to the Schedule?

**A:** The selected timezone will default to the local machine timezone. This is especially beneficial for geography-based on-call rotations. The teams will be able to view any created on-call schedule in their local time.

**Q:** Can I send on-call reminder notifications?

**A:** All members in an on-call shift will be notified via email 1 hour before the start of their shift. If the created override shift has less than an hour to begin, email notification will go out immediately after the override creation.

**Q:** Why cannot Stakeholders be added in the on-call Schedules?

**A:** Stakeholders are read-only users in Squadcast. Hence they cannot be added in an on-call schedule. When you try adding them you would see an error message as shown below.

![](images/schedules_20.png)