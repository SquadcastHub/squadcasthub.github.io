---
title: Notification Rules
tags: [Set-up-your-profile, Escalation-Policies, Schedules]
keywords: 
last_updated: 
datatable: 
summary: "Notification rules define how and when you are notified when an incident is assigned to you"
sidebar: mydoc_sidebar
permalink: docs/notification-rules
folder: mydoc
---

Notification Rules determine how an individual user is notified for an incident that is assigned to them. One can set up rules to be notified on any of the following notification channels: 

- Email
- [Push notification on the Squadcast mobile app](using-the-mobile-app)
- SMS
- Phone

{{site.data.alerts.blue-note}}
<b>Edit Notification Rules for other users of Squadcast</b><br/><br/>
<p>Irrespective of your User Role in Squadcast, you will only be able to set/edit your own Notification Rules. You will not be able to do it for any other member of Squadcast. If you wish to explicitly specify Notification Channels for all the users, this can be done in the Escalation Policy by selecting <b>Custom</b> from the drop-down.</p>
{{site.data.alerts.end}}

### Edit Notification Rules

**(1)** Click on the user icon in the upper right corner and select **Profile** 

![](images/notification_rules_1.png)

**(2)** You will be taken into the **My Profile** section where you can see the User Details on the left and the **Notification Rules** on the right. Click on the **Options** icon to edit the rules 

![](images/notification_rules_2.png)

**(3)** Enter the amount of time after the incident trigger when you wish to get notified by a particular medium and choose that medium from the drop-down at the end of the rule

**(4)** You can also add new rules by clicking **Add More Rules** at the bottom

**(5)** Select **Save** after making changes to save the configuration

![](images/notification_rules_3.png)

{{site.data.alerts.yellow-note-i-md}}
**Note:**

By default, every new user’s **Notification Rules** would be defined by Squadcast as indicated by the screenshot below:


![](images/notification_rules_4.png)
{{site.data.alerts.end}}

You're good to go. Now, when an incident is assigned to **you**, you will be notified based on your notification preferences set in the **Notification Rules** section.

{{site.data.alerts.yellow-note-i-md}}
**Things to Note:**

**(1)** You can set up a rule to be notified immediately, as soon as the incident is triggered, if you input 0 in the text box that asks for time.

**(2)** You cannot add `SMS` and `Phone` multiple times within your Notification Rules. The required repetition can be achieved by setting up the Escalation Policies right. However, there are no such limits for `Push` or `Email`.
{{site.data.alerts.end}}