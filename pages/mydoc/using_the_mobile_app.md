---
title: Using the Mobile App
tags: [mobile app]
keywords: 
last_updated: 
summary: "This document briefly explains all that you can do on our native mobile application available for both iOS and Android."
sidebar: mydoc_sidebar
permalink: docs/using-the-mobile-app.html
folder: mydoc
---

## Downloading the Mobile App 

The mobile app is available on both App Store and Google Play. Please keep your apps updated at all times for new features and improvements to reflect in your app.

<style>
table{
    border: 0px;
    max-width: 50%
}
table > tbody > tr > td{
    border-top: 0px;
}
table > tbody > tr:nth-of-type(odd){
    background-color: transparent;
}
</style>
<table>
    <tr>
        <td style="width: 30%"><a href="https://apps.apple.com/app/id1501689101"><img src="images/app_store.png"></a></td>
        <td style="width: 32%"><a href="https://play.google.com/store/apps/details?id=com.squadcast.incidents&hl=en"><img src="images/play_store.png"></a></td>
    </tr>
</table>

## Mobile App Walkthrough

You can use the mobile app to Acknowledge, Reassign, take Actions and Resolve from the Mobile App. The Mobile app will walk you into the incident dashboard where you will be able to view incidents from all states; Triggered (Open), Acknowledged (Investigating), Resolved and Suppressed. 

{{site.data.alerts.green-note-check}}
<b>SSO login now available on Mobile App</b>
<br/><br/><p>We have enabled SSO login for Mobile Apps as well. Check the <a href="#sso-login-support-for-mobile-apps">SSO login for mobile apps section</a> for more details.</p>
{{site.data.alerts.end}}

You will also be able to view incident specific details like the Automated Incident Timeline and War room on the mobile app. 

The screenshots below are from our Android app, and the iOS app is the same in functionality and very similar in design.

### Incident Management Dashboard

After logging into your account, you can choose the **Organization** whose incidents you want to view. 

Once chosen, this will then walk you into the incident dashboard for that **Organization** as seen below.

![](images/using_mobile_1.png){: style="max-width: 30%" }

You can see all the incidents for that particular **Organization** or swipe left to the **YOURS** tab to see all the incidents, irrespective of their state that have been assigned to you. 

You can swipe right to go back into the **ALL** tab to see the incidents for the **Organization** again. 

{{site.data.alerts.blue-note}}
<b>Incidents Assigned to You</b>
<br/><br/><p>The <b>ALL</b> tab will be the default dashboard view. You can swipe left to access all the incidents assigned to on the <b>YOURS</b> tab.</p>
{{site.data.alerts.end}}

![](images/using_mobile_2.png){: style="max-width: 30%" }

### Unique sound for Squadcast push notifications

All the Squadcast push notifications have a unique sound on both iOS and Android applications to differentiate from other push notifications.

This should ensure that you get alerted on incidents and it doesn't get lost in the noise of other push notifications

### Filtering Incidents

You can use the **Triggered**, **Acknowledged** or **Resolved** buttons to filter incidents based on Incident states. 

![](images/using_mobile_3.png){: style="max-width: 30%" }

### Handling an Incident

Clicking on the Incident from the dashboard will lead you to the **Incident Details** page. This page will hold all the details of the incident, same as shown on the web version.

You can **Acknowledge**, **Reassign**, **Resolve** or **Take Actions** from the incident details page. 

![](images/using_mobile_4.png){: style="max-width: 30%" }

### Taking Actions From Anywhere 

You can take actions from anywhere with the mobile app. You can run any and all actions you've configured on the web app to resolve an incident as quickly as possible.

![](images/using_mobile_5.png){: style="max-width: 30%" }

### Automated Incident Timeline 

You can swipe left to access the **Incident Timeline** which holds the details of any and all incident activity along with the timestamp. You can click on any link on the timeline to see the status of action taken. 

![](images/using_mobile_6.png){: style="max-width: 30%" }

### War Room 

Swipe right from **TIMNELINE** to access the **WARROOM**. 

Adding Users to the **WARROOM**: You can call in users  with the `@<input username>` to contribute to an incident resolution. 

![](images/using_mobile_7.png){: style="max-width: 30%" }

Viewing Existing **WARROOM** Members: Click on the **Users** icon at the bottom left corner to view the list of existing members. 

Removing Members From the **WARROOM**: Click on the **Users** icon at the bottom left corner to view the list of existing members. You can remove an existing member by clicking the **Red (-)** icon against the user's name. 

![](images/using_mobile_8.png){: style="max-width: 30%" }

## Managing Your Account 

Click on the **Account** tab from the side bar to view your account details. This will open the default/ configured settings for your account. 

### Add Your Name & Contact Number 

You can click on **Profile Details** to update your name and contact details. 

![](images/using_mobile_9.png){: style="max-width: 30%" }

{{site.data.alerts.note}}
<br/><br/><p>Your name & contact details can be seen by everyone in your organization who are on Squadcast from the <b>People</b> tab.</p>
{{site.data.alerts.end}}

### Notification Rules

You can configure how you want to receive incident notifications. We support Call, SMS, Email and Push notifications. You can also choose the order in which any of these notifications should come through. 

You can add as many rules as you see fit. 

![](images/using_mobile_10.png){: style="max-width: 30%" }

{{site.data.alerts.note}}
<br/><br/><p>If you <b>Acknowledge</b> / <b>Reassign</b> / <b>Resolve</b> an incident, the system understands that the pending notifications can be stopped. So, you will not receive any further notifications for the incident post this unless it has been reassigned to you again.</p>
{{site.data.alerts.end}}

## Users & Call Directory

You can click on the **People** tab from the sidebar to view all the users in your organization. You will be able to see their **Contact Number**, **Email Address**, **Notification Rules** and all the **Squads** and **Escalation Policies** they are a part of.

![](images/using_mobile_11.png){: style="max-width: 30%" }

![](images/using_mobile_12.png){: style="max-width: 30%" }

## Schedules view

You can select the Schedules by clicking on the Menu icon and then selecting Schedules from the displayed menu.

![](images/using_mobile_13.jpeg){: style="max-width: 30%" }

Then you can view your organisation schedules directly from the mobile app and find out who is in-call for a given day.

![](images/using_mobile_14.jpeg){: style="max-width: 30%" }

## SSO login support for Mobile apps

We have started supporting SSO login for mobile apps from version 2.8.37 onwards. Read below to know hoe to make it work on [Android](#section-android) & [iOS](#section-i-os).

{{site.data.alerts.yellow-note-i}}
<b>Important Note: </b>
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