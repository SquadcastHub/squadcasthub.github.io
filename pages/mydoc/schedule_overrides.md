---
title: Schedule Overrides
tags: [schedules, overrides]
summary: "Rotations for your customer support engineers or on-call teams"
sidebar: mydoc_sidebar
permalink: docs/schedule-overrides.html
folder: mydoc
---

Using scheduled overrides, you can override existing schedules with the new ones. This way, only the users in override schedules will get notified on incidents for the scheduled time period.

## Some points about scheduled overrides
1. Creating an override shift is identical to normal shifts, except the fact that they are marked as **`Override`**.
2. If an override shift overlaps with one or more shifts in the same on-call schedule, **only the assignees in the override shift are notified**.
3. If it does not overlap with any other shift, it behaves like a normal shift. It will still be marked as an **`Override`**. If a new normal schedule is created during an existing override shift period, the override shift will continue to override the new schedule for the scheduled override period.  
4. If two or more override shifts overlap, assignees from all of the override shifts will be notified when an incident is triggered.

## Creating a Scheduled Override

1.Move over to the **Schedules** section from the left side navigation panel. 

![](images/schedule_overrides_1.png){: style="max-width: 13%;" }

2.On the Calendar, click and drag over the date(s) on which you'd like to create the override shift. 

![](images/schedule_overrides_2.png)

3.Fill in the Override Shift details and select the Schedule for which this override shift will be implemented. Click on **Next**. 

![](images/schedule_overrides_3.png)

4.Fill in the repetition configuration as per requirement. Check the **Is Override** box and click on **Next**

![](images/schedule_overrides_4.png)

5.Prepare the rotations for the Override Shifts. Click **Create** to save the override shift. 

![](images/schedule_overrides_5.png)

##  Convert a Normal Shift to an Override Shift 

1.On the calendar, click on the existing shift that you would like to convert into an Override Shift. 

![](images/schedule_overrides_6.png)

2.Click on Edit button

![](images/schedule_overrides_7.png)

3.Make the necessary changes to the shift timing details and move over to **Repeats**. 

![](images/schedule_overrides_8.png)

4.Check the **Is Override** box. Click on **Next**. 

![](images/schedule_overrides_9.png)

5.Change the rotation configurations if necessary and click on **Create**. 

{{site.data.alerts.blue-note}}
<b>Check</b>
<br/><br/><p>1. This Event only: If this is a one-time only override shift <br/>
2. This and proceeding events: If this override applies for all the upcoming days. (This will make changes in the upcoming days only)<br/>
3. All events in this series: If this needs to be reflected throughout the entire schedule, on all the scheduled days (This will make changes in both the past and upcoming days)</p>
{{site.data.alerts.end}}

![](images/schedule_overrides_10.png)

This will now convert the existing normal shift to an Override Shift. 

![](images/schedule_overrides_11.png)

## Example 

For demonstrating this feature, we're going through an example in the section below. 

In this example, we go through the process of creating 2 normal shifts with two different users. We then convert one normal shift into an override shift. 

1.Create a new Schedule

![](images/schedule_overrides_12.png)

2.We're using the shift timing 2PM - 5PM in this example and create this schedule. Then, click **Next**.

![](images/schedule_overrides_13.png)

3.Check the **Does not repeat** box & leave the **Is Override** box unchecked. Click **Next**.

![](images/schedule_overrides_14.png)

4.Add a user to the Rotation. In this case, we've added **Tony Stark**. 
Then, click **Create**.

![](images/schedule_overrides_15.png)

Now, you can see there is a shift created from 2PM - 5PM in all 4 different views.

**I. Monthly**

![](images/schedule_overrides_16.png)

**II. Weekly**

![](images/schedule_overrides_17.png)

**III. Daily**

![](images/schedule_overrides_18.png)

**IV. Agenda**

![](images/schedule_overrides_19.png)

5.Similarly, we've created another Normal Shift from 3PM - 4PM with Bruce Banner in the rotation.

**Agenda View**

![](images/schedule_overrides_20.png)

We see that from 3PM - 4PM, both **Tony Stark** & **Bruce Banner** are on-call.

So, when an incident hits during that time period, both Tony and Bruce would get notified. 

Let's assume that we require Bruce Banner to get notified instead of Tony Stark during the 3PM - 4PM window. 

To make that happen, we just need to mark the 2nd shift, the one with **Bruce Banner** as an Override Shift.

6.Click on the shift that has just **Bruce Banner** in the rotation. 

![](images/schedule_overrides_21.png)

7.Click on the Edit button.

![](images/schedule_overrides_22.png)

8.Go to the **Repeats** tab. 

![](images/schedule_overrides_23.png)

9.Check the **Is Override** box. Click **Next**

![](images/schedule_overrides_24.png)

10.Click **Update**.

![](images/schedule_overrides_25.png)

Now, if we again see all the views, we'll observe the following:

**I. Monthly**

![](images/schedule_overrides_26.png)

**II. Weekly**

![](images/schedule_overrides_27.png)

**III. Daily***

![](images/schedule_overrides_28.png)

**IV. Agenda***

![](images/schedule_overrides_29.png)

So, now after the override is enabled, we see that only **Bruce Banner** is on-call from 3PM - 4PM. In this example, for any incident that comes in during the 3PM - 4PM window, **Bruce Banner** will get notified. 

This feature is primarily useful in cases where a member of the on-call team is on a short vacation and the notifications during that period must go to someone else on the team.