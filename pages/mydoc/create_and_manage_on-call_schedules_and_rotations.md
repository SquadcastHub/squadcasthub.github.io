---
title: Create and Manage On-call Schedules & Rotations
tags: [schedules, rotations]
summary: "Rotations for your customer support engineers or on-call teams"
sidebar: mydoc_sidebar
permalink: docs/schedules.html
folder: mydoc
---

Schedules allow you to create time-based rotations/repetitions for on-call schedules. You can see who is on-call on which day with monthly, weekly, daily and agenda views.

![](images/schedules_1.png)

In this documentation, we'll be going through the following :-
- Creating a Schedule
- Creating on-call person/squad for a schedule
- Updating an existing on-call
- Deleting an on-call
- Updating/Deleting a Schedule

{{site.data.alerts.note}}
<br/><br/><p>If you have configured routing rules for a service, they will override the schedule and will be given priority.</p>
{{site.data.alerts.end}}

{{site.data.alerts.blue-note}}
<b>Adding Schedules to Escalation Policies</b>
<br/><br/><p>Note that you will need to add a created schedule to a service for them to be notified when an incident.</p>
{{site.data.alerts.end}}

## Creating an On-call Shift / Schedule

1.You can create a schedule under **Schedules** → **+** button at the right hand side of the screen.

![](images/schedules_2.png)

**Schedule Name**: Give the schedule a name which you can use while adding the on-call schedule to the calendar.

**Schedule Description**: This is a short description of the schedule explaining what it is and why it exists. 

**Schedule Color**: You can also set a color for a specific schedule, which will be used while rendering the on-call on the calendar.

2.You can click on any day of the calendar to create an on-call starting from that day. You can also drag from a day to another to automatically set the *Start date* and *End date*

![](images/schedules_15.png)

- Every on-call shift must be a part of some pre-defined schedule. You need to choose which *schedule* you want to create this on-call shift for. 

- Input the *Start date*, *Start time*, *End date* and *End time* to determine when the shift begins and when it ends respectively. 

- Do not check the `Is Override` box if you want to create a normal shift.

- `Repeats`:

    Every Day - Use this to create a daily schedule

    Weekly -- Once a week: Use this to create a schedule that occurs on one day of the week 

    Weekly -- Particular Days Of a Week: Use this to create a schedule that occurs on particular days of the week 

    Custom: Use this to create any other custom schedule of your choice.

In this example we are creating a daily schedule.

![](images/schedules_16.png)

Add in the users who would be on call for this shift under the `Assignee Groups` section.
Each group behaves as a different rotation. 

In this example we have two rotations: 

1st rotation - Tony Stark

2nd rotation - BoJack Horseman and Diane Nyugen

- Select the number of shifts after which you want to change the assignee group. 

In this example we have chosen the assignee group after every shift. Since we have picked a daily rotation each day for the specified time interval will be considered one shift. So, every day this schedule will alternate between `Tony Stark`  and `BoJack Horseman and Diane Nyugen`.

![](images/schedules_17.png)

{{site.data.alerts.green-note-check}}
<b>Localized Timezones:</b>
<br/><br/><p>The selected timezone will default to the local machine timezone. This is especially beneficial for geography-based on-call rotations. <br/><br/>The teams will be able to view any created on-call schedule in their local time.</p>
{{site.data.alerts.end}}

{{site.data.alerts.blue-note}}
<b>Notifications to On-call Team</b>
<br/><br/><p>All members in an on-call shift will be notified via email 1 hour before the start of their shift.<br/><br/>
If the created override shift has less than an hour to begin, email notification will go out immediately after creation.</p>
{{site.data.alerts.end}}

### How to use Repetitions

Repetitions can be daily, weekly or monthly. You can customize the number of days/weeks/months you want the on-call to repeat for. You can also restrict the schedules to specific times of the day or during specific days of the week, based on your need.

#### Daily

Check the `Every Day` option to create a daily schedule.

![](images/schedules_18.png)

#### Once a Week 

Check `Weekly -- Once a week` option  to create a schedule that occurs only on one day of the week. 
You can select the day on which this shift will be active.

![](images/schedules_19.png)

#### Multiple Days of the Week

Select the `Weekly -- Particular Days Of a Week` option to create a schedule that occurs on particular days of the week 
You can select the days on which this shift will be active.

![](images/schedules_20.png)

#### Custom 

Select the `Custom` option to create any other custom shift of your choice.

![](images/schedules_21.png)

## Gaps in your Schedule 

It is important to ensure that there are no gaps in your Schedules. 

- If you have any gaps in your schedules configuration, the system will prompt the banner **You have gaps in your schedule** right above the Schedules calendar view.

- To know more details about the gaps, you can click on the **You have gaps in your schedule** banner and it will show you the Name of the Schedule along with the Data and Time during which there is a gap. 

![](images/schedules_14.png)

## Updating an Existing on-call

You can update an already existing on-call by clicking over any assigned user/squad on the calendar.

![](images/schedules_8.png)

You can update the on-call configuration as per your need and you can select **Update method** as:
-  **This Event Only**: to update that particular event.
-  **This and proceeding events**: to update the selected event and all the events that comes afterwards.
- **All events in this series**: to update all the events of that series irrespective of which event you clicked on.

![](images/schedules_22.png)

## Deleting an on-call

You can delete an existing on-call by clicking the **Delete** button at the bottom right corner of the **Update on-call** dialog box.
You have to choose between:
- **This event only**: It will delete only the selected event of the series.
- **This and proceeding events**: It will delete the event selected as well as all the future events belonging to that series.
- **All events**: It will delete all the events belonging to that series.

![](images/schedules_23.png)

## Updating/Deleting a Schedule

You can update/delete a schedule by clicking the the Schedule name you want to delete at the right hand side of the page. You can update the schedule details as per your needs or you may delete it by clicking the *bin* icon at the bottom right corner of the dialog box. 

![](images/schedules_11.png)

## Creating a One-off Schedule / Irregular Schedule

One-off or non-recurring schedules are used to cover on-call for a short period of time but are not a part of the usual recurring rotations. 

In some one-off cases where one member of your team is asked to step in for another, cases where there's an unavoidable emergency or even in the case of planned vacations, you can create one-off  schedules. 

To setup a one-off schedule on Squadcast, you can just untick the `Repeats` box in the pop-up and complete the rest of the schedule configuration as per your need.

Click on `Create` to save this.

![](images/schedules_24.png)