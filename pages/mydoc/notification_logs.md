---
title: Notification Logs
tags:
keywords:
last_updated:
summary: "Notification Logs shows details of all the notifications generated for an Incident"
sidebar: mydoc_sidebar
permalink: docs/notification-logs
folder: mydoc
---

You can access the notification logs for a perticular incident by going into the incident details
page and clicking on **Notification Logs** in the **Responders** section

![](images/notification_logs_1.png)

**(1)** **User name** of the user

**(2)** **Notification channel** depicted by an icon followed by the destination. Destination for email is the **email address**, **Phone number** for phone calls and SMS. For push notifications destination would show as **push**

**(3)** **status** of the notification.

A notification can have one of the following statuses

_(a)_ _scheduled_: When the notification is scheduled to be sent out from Squadcast.

_(b)_ _dispatched_: When the notification gets sent out from Squadcast and has been accepted by our providers (Plivo/Twilio/Onesignal/Mailgun)

_(c)_ _sent_: When the notification is sent out from our providers to users’ devices.

_(d)_ _delivered_: When notification gets delivered to users' devices.

{{site.data.alerts.yellow-note-i-md}}
**Note:**

In some cases, notification might have been delivered to users devices, and status can still be set to sent/dispatched. We depend on our vendor who intern depend on hundreds of carriers worldwide to get delivery information. In some rare cases, these logs might not be reliable. Please raise a support ticket in that case so we can collaborate with our vendors.

{{site.data.alerts.end}}

_(e)_ _failed_: When Squadcast is unable to send out the notifications.

_(f)_ _canceled_: Someone might have acknowledged/resolved the incident, hence the rest of the scheduled notification status will be set to canceled.

You can get the _time of delivery_ for notifications that are in status sent or delivered by hovering over them

**(4)** _Time_ at which the notification is/was to be sent.

**(5)** You can refresh for latest data

{{site.data.alerts.yellow-note-i-md}}
**Note:**

**(1)** You might see multiple push notifications if you have logged in using multiple phones

**(2)** You wont see any push notifications in the logs if you haven't installed and logged in into Squadcast App eventhough you have push in your notification rule

{{site.data.alerts.end}}
