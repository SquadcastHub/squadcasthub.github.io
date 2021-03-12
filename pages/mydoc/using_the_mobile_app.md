---
title: Using the Mobile App
tags: [mobile app]
keywords: 
last_updated: 
summary: "This document briefly explains all that you can do on our native mobile application available for both iOS and Android."
sidebar: mydoc_sidebar
permalink: docs/using-the-mobile-app
folder: mydoc
---

You can use our mobile app to Acknowledge, Reassign, take Actions, and Resolve from the Mobile App also a view into who is on-call schedules. The Mobile app will walk you into the incident dashboard where you will be able to view incidents organized into incident-status.

{{site.data.alerts.green-note-check}}
<b>SSO login now available on Mobile App</b>
<br/><br/><p>We have enabled SSO login for Mobile Apps as well. Check the <a href="#sso-login-support-for-mobile-apps">SSO login for mobile apps section</a> for more details.</p>
{{site.data.alerts.end}}

### Incident list

Once logged in the app will be navigated to the incident-list view. Incidents are organized according to incident-status. The tabs above list the count for only acknowledged and triggered incidents.

![](images/using_mobile_1.png){: style="max-width: 30%" }

The incident list can be assorted into based on time by clicking the filter icon on the top right corner as mentioned below

![](images/using_mobile_2.png){: style="max-width: 30%" }

Incidents can be searched by clicking on search icon on the top right corner

![](images/using_mobile_3.png){: style="max-width: 30%" }

### Unique sound for Squadcast push notifications

All the Squadcast push notifications have a unique sound on both iOS and Android applications to differentiate from other push notifications.

This should ensure that you get alerted on incidents and it doesn't get lost in the noise of other push notifications

### Incident Page

On an incident page you can take all the actions that are supported on our web app. The page is categorized into 4 pages based on the incident. Details - the incident details, Timeline - incident timeline, Events - incident events (if the incident has deduped events), Incident Notes

![](images/using_mobile_4.png){: style="max-width: 30%" }

Incident details page enables quick actions (Acknowledge and Resolve), and more options provide reassign and squad actions

![](images/using_mobile_5.png){: style="max-width: 30%" }

#### Timeline 

The incident timeline provides all the recorded logs taken against the action

![](images/using_mobile_6.png){: style="max-width: 30%" }

#### Incident Notes

Each incident gets its own notes section. One can @mention users and invite them to collaborate and resolve the incident. 

![](images/incident_notes_12.png){: style="max-width: 30%" }

### Notification Rules

You can configure how you want to receive incident notifications. We support Call, SMS, Email, and Push notifications. You can also choose the order in which any of these notifications should come through. 

You can add as many rules as you see fit. 

![](images/using_mobile_8.png){: style="max-width: 30%" }

{{site.data.alerts.blue-note}}
<b>Note</b>
<br/><br/><p>If you <b>Acknowledge</b> / <b>Reassign</b> / <b>Resolve</b> an incident, the system understands that the pending notifications can be stopped. So, you will not receive any further notifications for the incident post this unless it has been reassigned to you again.</p>
{{site.data.alerts.end}}

### Teams

Team lists all the members of the organization. Additionally, if the user is on call, there will be a small green dot against the user avatar. 

![](images/using_mobile_9.png){: style="max-width: 30%" }

Navigating to the user will be taken into the user profile. User profile lists all the user info including the user notification rules, schedules escalation-policies and squads.

![](images/using_mobile_10.png){: style="max-width: 30%" }

### Schedules

Schedules list’s all the schedules organized against date and time.

![](images/using_mobile_11.png){: style="max-width: 30%" }

### SSO login support for Mobile apps

We have started supporting SSO login for mobile apps from version 2.8.37 onwards. Read below to know how to make it work on [Android](#android) & [iOS](#ios).

{{site.data.alerts.yellow-note-i}}
<b>Important Note</b>
<br/><br/><p>SSO login for Mobile app works only if you access your SSO dashboard from your web browser. Login using SSO provider apps are not supported due to limitations imposed by the SSO providers.</p>
{{site.data.alerts.end}}

### Android

1. Open the Squadcast Mobile App
2. Open your mobile browser and login to the SSO dashboard from the mobile browser.
3. Click on the Squadcast logo in your SSO dashboard.

That's it, you will be logged in to the mobile app automatically.

### iOS

1. Open your mobile browser and login to the SSO dashboard from the mobile browser.
2. Click on the Squadcast logo in your SSO dashboard.

That's it, you will be logged in to the mobile app automatically.